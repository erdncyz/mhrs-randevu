using MHRS_OtomatikRandevu.Models.ResponseModels;
using MHRS_OtomatikRandevu.Models.Web;
using MHRS_OtomatikRandevu.Services;
using MHRSMobileApp.Services;

namespace MHRSMobileApp;

public partial class MainPage : ContentPage
{
	private readonly WebMhrsService _service;
	private List<GenericResponseModel> _hospitals = new();
	private List<SubSlot> _slots = new();
	private bool _runtimeTickerStarted;

	public MainPage()
	{
		InitializeComponent();

		_service = new WebMhrsService(new ClientService());
		StartDatePicker.Date = DateTime.Today;
		EndDatePicker.Date = DateTime.Today.AddDays(15);

		ConfigurePickers();
		LoadSavedState();
		RefreshNetworkLogs();
	}

	protected override void OnAppearing()
	{
		base.OnAppearing();
		_ = RequestNotificationPermissionAsync();
		StartRuntimeTicker();
		UpdateAutoScanUiState();
		RefreshNetworkLogs();
	}

	private static async Task RequestNotificationPermissionAsync()
	{
		try
		{
			var status = await Permissions.CheckStatusAsync<Permissions.PostNotifications>();
			if (status != PermissionStatus.Granted)
			{
				await Permissions.RequestAsync<Permissions.PostNotifications>();
			}
		}
		catch
		{
			// Permission request failure should not block the main flow.
		}
	}

	private void ConfigurePickers()
	{
		ProvincePicker.ItemDisplayBinding = new Binding(nameof(OptionItem.Text));
		DistrictPicker.ItemDisplayBinding = new Binding(nameof(OptionItem.Text));
		ClinicPicker.ItemDisplayBinding = new Binding(nameof(OptionItem.Text));
		HospitalPicker.ItemDisplayBinding = new Binding(nameof(OptionItem.Text));
		PlacePicker.ItemDisplayBinding = new Binding(nameof(OptionItem.Text));
		DoctorPicker.ItemDisplayBinding = new Binding(nameof(OptionItem.Text));
		AutoIntervalUnitPicker.ItemsSource = new List<string> { "Saniye", "Dakika", "Saat" };
	}

	private async void OnImportClicked(object? sender, EventArgs e)
	{
		try
		{
			SetBusy(true);
			var form = new TokenImportForm { Token = TokenEditor.Text?.Trim() ?? string.Empty };
			var import = await _service.ImportTokenAsync(form);
			if (!import.Success)
			{
				StatusLabel.Text = ErrorTextFormatter.Clean(import.Message ?? "Token dogrulanamadi.");
				return;
			}

			if (import.Data is TokenImportSuccessData data)
			{
				ScanSettingsStore.SetToken(data.Token);
				TokenEditor.Text = data.Token;
			}

			StatusLabel.Text = "Oturum aktif. Il seciminden baslayabilirsiniz.";
			await LoadProvincesAsync();
			SaveFormState();
		}
		catch (Exception ex)
		{
			StatusLabel.Text = $"Token aktarim hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
		finally
		{
			SetBusy(false);
		}
	}

	private async Task LoadProvincesAsync()
	{
		var provinces = await _service.GetProvincesAsync();
		ProvincePicker.ItemsSource = ToOptions(provinces);

		if (ProvincePicker.ItemsSource is not List<OptionItem> list || list.Count == 0)
		{
			return;
		}

		var targetId = ScanSettingsStore.GetInt(ScanSettingsStore.KeyProvinceId, -1);
		var index = list.FindIndex(x => x.Value == targetId);
		ProvincePicker.SelectedIndex = index >= 0 ? index : 0;
	}

	private async void OnProvinceChanged(object? sender, EventArgs e)
	{
		if (ProvincePicker.SelectedItem is not OptionItem selected) return;

		try
		{
			var districts = await _service.GetDistrictsAsync(selected.Value);
			DistrictPicker.ItemsSource = ToOptions(districts);
			DistrictPicker.SelectedIndex = -1;
			ClinicPicker.ItemsSource = null;
			HospitalPicker.ItemsSource = null;
			PlacePicker.ItemsSource = null;
			DoctorPicker.ItemsSource = null;
			SaveFormState();
		}
		catch (Exception ex)
		{
			SearchStatusLabel.Text = $"Ilce yukleme hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
	}

	private async void OnDistrictChanged(object? sender, EventArgs e)
	{
		if (ProvincePicker.SelectedItem is not OptionItem province) return;
		if (DistrictPicker.SelectedItem is not OptionItem district) return;

		try
		{
			var clinics = await _service.GetClinicsAsync(province.Value, district.Value);
			ClinicPicker.ItemsSource = ToOptions(clinics);
			ClinicPicker.SelectedIndex = -1;
			HospitalPicker.ItemsSource = null;
			PlacePicker.ItemsSource = null;
			DoctorPicker.ItemsSource = null;
			SaveFormState();
		}
		catch (Exception ex)
		{
			SearchStatusLabel.Text = $"Klinik yukleme hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
	}

	private async void OnClinicChanged(object? sender, EventArgs e)
	{
		if (ProvincePicker.SelectedItem is not OptionItem province) return;
		if (DistrictPicker.SelectedItem is not OptionItem district) return;
		if (ClinicPicker.SelectedItem is not OptionItem clinic) return;

		try
		{
			_hospitals = await _service.GetHospitalsAsync(province.Value, district.Value, clinic.Value);
			HospitalPicker.ItemsSource = ToOptions(_hospitals);
			HospitalPicker.SelectedIndex = -1;
			PlacePicker.ItemsSource = null;
			DoctorPicker.ItemsSource = null;
			SaveFormState();
		}
		catch (Exception ex)
		{
			SearchStatusLabel.Text = $"Hastane yukleme hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
	}

	private async void OnHospitalChanged(object? sender, EventArgs e)
	{
		if (HospitalPicker.SelectedItem is not OptionItem hospital) return;
		if (ClinicPicker.SelectedItem is not OptionItem clinic) return;

		try
		{
			var places = await _service.GetPlacesAsync(hospital.Value, clinic.Value);
			PlacePicker.ItemsSource = ToOptions(places.Select(x => new GenericResponseModel
			{
				Value = x.Value,
				Text = x.Text
			}).ToList(), includeAny: true);
			PlacePicker.SelectedIndex = 0;

			var doctors = await _service.GetDoctorsAsync(hospital.Value, hospital.Value, clinic.Value);
			DoctorPicker.ItemsSource = ToOptions(doctors, includeAny: true);
			DoctorPicker.SelectedIndex = 0;
			SaveFormState();
		}
		catch (Exception ex)
		{
			SearchStatusLabel.Text = $"Muayene yeri/doktor yukleme hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
	}

	private async void OnSearchClicked(object? sender, EventArgs e)
	{
		try
		{
			if (ProvincePicker.SelectedItem is not OptionItem province ||
				DistrictPicker.SelectedItem is not OptionItem district ||
				ClinicPicker.SelectedItem is not OptionItem clinic)
			{
				SearchStatusLabel.Text = "Il, ilce ve klinik secimi zorunludur.";
				return;
			}

			SetBusy(true);

			var form = new SlotSearchForm
			{
				ProvinceId = province.Value,
				DistrictId = district.Value,
				ClinicId = clinic.Value,
				HospitalId = (HospitalPicker.SelectedItem as OptionItem)?.Value ?? -1,
				PlaceId = (PlacePicker.SelectedItem as OptionItem)?.Value ?? -1,
				DoctorId = (DoctorPicker.SelectedItem as OptionItem)?.Value ?? -1,
				StartDate = StartDatePicker.Date.ToString("yyyy-MM-dd"),
				EndDate = EndDatePicker.Date.ToString("yyyy-MM-dd"),
				IncludedHours = ParseHours(IncludeHoursEntry.Text),
				ExcludedHours = ParseHours(ExcludeHoursEntry.Text)
			};

			SaveFormState();

			var result = await _service.SearchSlotsAsync(form);
			if (!string.IsNullOrWhiteSpace(result.ErrorMessage))
			{
				SearchStatusLabel.Text = ErrorTextFormatter.Clean(result.ErrorMessage);
				SlotsCollection.ItemsSource = null;
				return;
			}

			_slots = result.Slots;
			SlotsCollection.ItemsSource = _slots;
			SearchStatusLabel.Text = _slots.Count == 0 ? "Uygun slot bulunamadi." : $"{_slots.Count} slot bulundu.";
		}
		catch (Exception ex)
		{
			SearchStatusLabel.Text = $"Arama hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
		finally
		{
			SetBusy(false);
		}
	}

	private async void OnBookClicked(object? sender, EventArgs e)
	{
		if (sender is not Button button || button.CommandParameter is not SubSlot slot)
		{
			return;
		}

		try
		{
			SetBusy(true);
			var response = await BookSlotAsync(slot);
			if (response.Success)
			{
				await DisplayAlert("Basarili", ErrorTextFormatter.Clean(response.Message ?? "Randevu alindi."), "Tamam");
			}
			else
			{
				await DisplayAlert("Randevu Alinamadi", ErrorTextFormatter.Clean(response.Message ?? "Islem basarisiz."), "Tamam");
			}
		}
		catch (Exception ex)
		{
			await DisplayAlert("Hata", ErrorTextFormatter.Clean(ex.Message), "Tamam");
		}
		finally
		{
			SetBusy(false);
		}
	}

	private void OnClearClicked(object? sender, EventArgs e)
	{
		TokenEditor.Text = string.Empty;
		StatusLabel.Text = "Token bekleniyor";
		SearchStatusLabel.Text = string.Empty;
		NotifyStatusLabel.Text = string.Empty;
		AutoStatusLabel.Text = string.Empty;
		ProvincePicker.ItemsSource = null;
		DistrictPicker.ItemsSource = null;
		ClinicPicker.ItemsSource = null;
		HospitalPicker.ItemsSource = null;
		PlacePicker.ItemsSource = null;
		DoctorPicker.ItemsSource = null;
		SlotsCollection.ItemsSource = null;
		IncludeHoursEntry.Text = string.Empty;
		ExcludeHoursEntry.Text = string.Empty;
		AutoIntervalEntry.Text = "30";
		AutoIntervalUnitPicker.SelectedItem = "Saniye";
		AutoRequestCountLabel.Text = "Deneme: 0";
		StartDatePicker.Date = DateTime.Today;
		EndDatePicker.Date = DateTime.Today.AddDays(15);
		ScanSettingsStore.Clear();
	}

	private void OnRefreshLogsClicked(object? sender, EventArgs e)
	{
		RefreshNetworkLogs();
	}

	private void OnClearLogsClicked(object? sender, EventArgs e)
	{
		NetworkLogStore.Clear();
		RefreshNetworkLogs();
	}

	private void RefreshNetworkLogs()
	{
		NetworkLogEditor.Text = NetworkLogStore.ReadTail();
	}

	private async void OnSaveNotifyClicked(object? sender, EventArgs e)
	{
		ScanSettingsStore.SetNotify(
			NotifyEnabledSwitch.IsToggled,
			TelegramBotTokenEntry.Text?.Trim() ?? string.Empty,
			TelegramChatIdEntry.Text?.Trim() ?? string.Empty);

		NotifyStatusLabel.Text = "Bildirim ayarlari kaydedildi.";
		await Task.CompletedTask;
	}

	private async void OnTestNotifyClicked(object? sender, EventArgs e)
	{
		try
		{
			await OnSaveNotifyInternalAsync();
			var result = await TelegramClient.SendAsync(
				TelegramBotTokenEntry.Text?.Trim() ?? string.Empty,
				TelegramChatIdEntry.Text?.Trim() ?? string.Empty,
				"MHRS mobil test mesaji: ayarlar calisiyor.");

			NotifyStatusLabel.Text = result.Success ? "Test mesaji gonderildi." : result.Message ?? "Gonderim basarisiz.";
		}
		catch (Exception ex)
		{
			NotifyStatusLabel.Text = $"Test hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
	}

	private async void OnAutoScanClicked(object? sender, EventArgs e)
	{
		try
		{
			if (ScanSettingsStore.IsAutoScanRunning())
			{
				BackgroundScanController.Stop();
				AutoStatusLabel.Text = "Otomatik tarama durduruldu.";
				UpdateAutoScanUiState();
				return;
			}

			if (string.IsNullOrWhiteSpace(ScanSettingsStore.GetToken()))
			{
				AutoStatusLabel.Text = "Otomatik tarama icin once token ice aktarilmali.";
				return;
			}

			if (!TryParseScanInterval(out var intervalSeconds, out var intervalText, out var intervalUnit))
			{
				AutoStatusLabel.Text = "Gecerli tarama araligi girin (Saniye>=10, Dakika/Saat>=1).";
				return;
			}

			await OnSaveNotifyInternalAsync();
			SaveFormState();
			ScanSettingsStore.SetAutoScanConfig(intervalSeconds, intervalUnit, true);
			ScanSettingsStore.SetAutoRequestCount(0);
			ScanSettingsStore.SetAutoLastStatus($"Otomatik tarama basladi. Aralik: {intervalText}.");
			BackgroundScanController.Start(intervalSeconds);
			AutoStatusLabel.Text = $"Otomatik tarama arka planda baslatildi. Aralik: {intervalText}.";
			AutoRequestCountLabel.Text = "Deneme: 0";
			UpdateAutoScanUiState();
		}
		catch (Exception ex)
		{
			AutoStatusLabel.Text = $"Otomatik tarama hatasi: {ErrorTextFormatter.Clean(ex.Message)}";
		}
	}

	private async Task<ApiResult> BookSlotAsync(SubSlot slot)
	{
		var form = new BookAppointmentForm
		{
			FkSlotId = slot.Id,
			FkCetvelId = slot.FkCetvelId,
			MuayeneYeriId = slot.MuayeneYeriId,
			BaslangicZamani = slot.BaslangicZamani ?? string.Empty,
			BitisZamani = slot.BitisZamani ?? string.Empty,
			AllowCancelAndRebook = true
		};

		var response = await _service.MakeAppointmentAsync(form);
		if (NotifyEnabledSwitch.IsToggled)
		{
			var message = response.Success
				? $"Randevu alindi. Tarih: {slot.BaslangicZamani} Doktor: {slot.HekimAdi ?? "Bilinmiyor"} Kurum: {slot.KurumAdi ?? "Bilinmiyor"}"
				: $"Randevu alma denemesi basarisiz: {ErrorTextFormatter.Clean(response.Message)}";

			await TelegramClient.SendAsync(
				TelegramBotTokenEntry.Text?.Trim() ?? string.Empty,
				TelegramChatIdEntry.Text?.Trim() ?? string.Empty,
				message);
		}

		return response;
	}

	private bool TryParseScanInterval(out int intervalSeconds, out string intervalText, out string intervalUnit)
	{
		intervalSeconds = 0;
		intervalText = string.Empty;
		intervalUnit = (AutoIntervalUnitPicker.SelectedItem as string) ?? "Saniye";
		var raw = AutoIntervalEntry.Text?.Trim();
		if (!int.TryParse(raw, out var value))
		{
			return false;
		}

		switch (intervalUnit)
		{
			case "Dakika":
				if (value < 1) return false;
				intervalSeconds = value * 60;
				intervalText = $"{value} dakika";
				return true;
			case "Saat":
				if (value < 1) return false;
				intervalSeconds = value * 3600;
				intervalText = $"{value} saat";
				return true;
			default:
				if (value < 10) return false;
				intervalSeconds = value;
				intervalText = $"{value} saniye";
				return true;
		}
	}

	private void LoadSavedState()
	{
		TokenEditor.Text = ScanSettingsStore.GetToken();
		TelegramBotTokenEntry.Text = ScanSettingsStore.GetTelegramBotToken();
		TelegramChatIdEntry.Text = ScanSettingsStore.GetTelegramChatId();
		NotifyEnabledSwitch.IsToggled = ScanSettingsStore.GetNotifyEnabled();
		IncludeHoursEntry.Text = ScanSettingsStore.GetString(ScanSettingsStore.KeyIncludedHours, string.Empty);
		ExcludeHoursEntry.Text = ScanSettingsStore.GetString(ScanSettingsStore.KeyExcludedHours, string.Empty);
		AutoIntervalEntry.Text = ScanSettingsStore.GetInt(ScanSettingsStore.KeyAutoIntervalSeconds, 30).ToString();
		var unit = ScanSettingsStore.GetAutoIntervalUnit();
		AutoIntervalUnitPicker.SelectedItem = unit;
		StartDatePicker.Date = ScanSettingsStore.GetDate(ScanSettingsStore.KeyStartDate, DateTime.Today);
		EndDatePicker.Date = ScanSettingsStore.GetDate(ScanSettingsStore.KeyEndDate, DateTime.Today.AddDays(15));
		AutoRequestCountLabel.Text = $"Deneme: {ScanSettingsStore.GetAutoRequestCount()}";
		var lastStatus = ScanSettingsStore.GetAutoLastStatus();
		if (!string.IsNullOrWhiteSpace(lastStatus) && string.IsNullOrWhiteSpace(AutoStatusLabel.Text))
		{
			AutoStatusLabel.Text = lastStatus;
		}

		NormalizeIntervalDisplay();
	}

	private void NormalizeIntervalDisplay()
	{
		var seconds = ScanSettingsStore.GetInt(ScanSettingsStore.KeyAutoIntervalSeconds, 30);
		var unit = ScanSettingsStore.GetAutoIntervalUnit();

		switch (unit)
		{
			case "Dakika":
				AutoIntervalEntry.Text = Math.Max(1, seconds / 60).ToString();
				break;
			case "Saat":
				AutoIntervalEntry.Text = Math.Max(1, seconds / 3600).ToString();
				break;
			default:
				AutoIntervalEntry.Text = seconds.ToString();
				break;
		}
	}

	private void SaveFormState()
	{
		ScanSettingsStore.SetToken(TokenEditor.Text?.Trim() ?? string.Empty);
		ScanSettingsStore.SetInt(ScanSettingsStore.KeyProvinceId, (ProvincePicker.SelectedItem as OptionItem)?.Value ?? -1);
		ScanSettingsStore.SetInt(ScanSettingsStore.KeyDistrictId, (DistrictPicker.SelectedItem as OptionItem)?.Value ?? -1);
		ScanSettingsStore.SetInt(ScanSettingsStore.KeyClinicId, (ClinicPicker.SelectedItem as OptionItem)?.Value ?? -1);
		ScanSettingsStore.SetInt(ScanSettingsStore.KeyHospitalId, (HospitalPicker.SelectedItem as OptionItem)?.Value ?? -1);
		ScanSettingsStore.SetInt(ScanSettingsStore.KeyPlaceId, (PlacePicker.SelectedItem as OptionItem)?.Value ?? -1);
		ScanSettingsStore.SetInt(ScanSettingsStore.KeyDoctorId, (DoctorPicker.SelectedItem as OptionItem)?.Value ?? -1);
		ScanSettingsStore.SetDate(ScanSettingsStore.KeyStartDate, StartDatePicker.Date);
		ScanSettingsStore.SetDate(ScanSettingsStore.KeyEndDate, EndDatePicker.Date);
		ScanSettingsStore.SetString(ScanSettingsStore.KeyIncludedHours, IncludeHoursEntry.Text?.Trim() ?? string.Empty);
		ScanSettingsStore.SetString(ScanSettingsStore.KeyExcludedHours, ExcludeHoursEntry.Text?.Trim() ?? string.Empty);
	}

	private async Task OnSaveNotifyInternalAsync()
	{
		ScanSettingsStore.SetNotify(
			NotifyEnabledSwitch.IsToggled,
			TelegramBotTokenEntry.Text?.Trim() ?? string.Empty,
			TelegramChatIdEntry.Text?.Trim() ?? string.Empty);
		await Task.CompletedTask;
	}

	private void UpdateAutoScanUiState()
	{
		var running = ScanSettingsStore.IsAutoScanRunning();
		AutoScanButton.Text = running ? "Otomatik Durdur" : "Otomatik Baslat";
		AutoRequestCountLabel.Text = $"Deneme: {ScanSettingsStore.GetAutoRequestCount()}";
		var lastStatus = ScanSettingsStore.GetAutoLastStatus();
		if (!string.IsNullOrWhiteSpace(lastStatus))
		{
			AutoStatusLabel.Text = lastStatus;
		}
		else if (running && string.IsNullOrWhiteSpace(AutoStatusLabel.Text))
		{
			AutoStatusLabel.Text = "Arka planda otomatik tarama aktif.";
		}
	}

	private void StartRuntimeTicker()
	{
		if (_runtimeTickerStarted)
		{
			return;
		}

		_runtimeTickerStarted = true;
		Dispatcher.StartTimer(TimeSpan.FromSeconds(1), () =>
		{
			if (!_runtimeTickerStarted)
			{
				return false;
			}

			UpdateAutoScanUiState();
			return true;
		});
	}

	private static List<int> ParseHours(string? raw)
	{
		if (string.IsNullOrWhiteSpace(raw)) return new List<int>();

		return raw
			.Split(',', StringSplitOptions.RemoveEmptyEntries | StringSplitOptions.TrimEntries)
			.Select(text => int.TryParse(text, out var hour) ? hour : -1)
			.Where(hour => hour >= 0 && hour <= 23)
			.Distinct()
			.ToList();
	}

	private static List<OptionItem> ToOptions(List<GenericResponseModel> list, bool includeAny = false)
	{
		var options = new List<OptionItem>();
		if (includeAny)
		{
			options.Add(new OptionItem { Value = -1, Text = "FARKETMEZ" });
		}

		options.AddRange(list.Select(item => new OptionItem
		{
			Value = item.Value,
			Text = item.Text ?? item.Value.ToString()
		}));

		return options;
	}

	private void SetBusy(bool isBusy)
	{
		IsBusy = isBusy;
		ImportButton.IsEnabled = !isBusy;
		AutoScanButton.IsEnabled = !isBusy;
	}

	private sealed class OptionItem
	{
		public int Value { get; set; }
		public string Text { get; set; } = string.Empty;
	}
}

