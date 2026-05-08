using System.Globalization;
using System.Text.Json;
using System.Text.RegularExpressions;
using MHRS_OtomatikRandevu.Models;
using MHRS_OtomatikRandevu.Models.RequestModels;
using MHRS_OtomatikRandevu.Models.ResponseModels;
using MHRS_OtomatikRandevu.Models.Web;
using MHRS_OtomatikRandevu.Services.Abstracts;
using MHRS_OtomatikRandevu.Urls;
using MHRS_OtomatikRandevu.Utils;

namespace MHRS_OtomatikRandevu.Services;

public class WebMhrsService
{
    private readonly IClientService _client;

    public WebMhrsService(IClientService client)
    {
        _client = client;
    }

    public void UseToken(string token)
    {
        _client.AddOrUpdateAuthorizationHeader(token);
    }

    public async Task<ApiResult> ImportTokenAsync(TokenImportForm form)
    {
        var rawToken = ExtractToken(form.Token);
        if (string.IsNullOrWhiteSpace(rawToken))
        {
            return ApiResult.Fail("Gecerli bir JWT token girilmedi", "TOKEN_EMPTY");
        }

        _client.AddOrUpdateAuthorizationHeader(rawToken);

        var provinces = await _client.GetSimple<List<GenericResponseModel>>(MHRSUrls.BaseUrl, MHRSUrls.GetProvinces);
        if (provinces == null || provinces.Count == 0)
        {
            return ApiResult.Fail("Token dogrulanamadi. Resmi MHRS oturumundan gecerli token alin.", "TOKEN_INVALID");
        }

        return ApiResult.Ok(new TokenImportSuccessData
        {
            Token = rawToken,
            Expiration = JwtTokenUtil.GetTokenExpireTime(rawToken)
        }, "Token dogrulandi");
    }

    public async Task<List<GenericResponseModel>> GetProvincesAsync()
    {
        var response = await _client.GetSimple<List<GenericResponseModel>>(MHRSUrls.BaseUrl, MHRSUrls.GetProvinces);
        return response?.DistinctBy(x => x.Value).OrderBy(x => x.Text).ToList() ?? new List<GenericResponseModel>();
    }

    public async Task<List<GenericResponseModel>> GetDistrictsAsync(int provinceId)
    {
        var endpoint = string.Format(MHRSUrls.GetDistricts, provinceId);
        var response = await _client.GetSimple<List<GenericResponseModel>>(MHRSUrls.BaseUrl, endpoint);
        return response ?? new List<GenericResponseModel>();
    }

    public async Task<List<GenericResponseModel>> GetClinicsAsync(int provinceId, int districtId)
    {
        var endpoint = string.Format(MHRSUrls.GetClinics, provinceId, districtId);
        var response = await _client.Get<List<GenericResponseModel>>(MHRSUrls.BaseUrl, endpoint);
        return response?.Data ?? new List<GenericResponseModel>();
    }

    public async Task<List<GenericResponseModel>> GetHospitalsAsync(int provinceId, int districtId, int clinicId)
    {
        var endpoint = string.Format(MHRSUrls.GetHospitals, provinceId, districtId, clinicId);
        var response = await _client.Get<List<GenericResponseModel>>(MHRSUrls.BaseUrl, endpoint);
        return response?.Data ?? new List<GenericResponseModel>();
    }

    public async Task<List<ClinicResponseModel>> GetPlacesAsync(int hospitalId, int clinicId)
    {
        var endpoint = string.Format(MHRSUrls.GetPlaces, hospitalId, clinicId);
        var response = await _client.Get<List<ClinicResponseModel>>(MHRSUrls.BaseUrl, endpoint);
        return response?.Data ?? new List<ClinicResponseModel>();
    }

    public async Task<List<GenericResponseModel>> GetDoctorsAsync(int anaKurumId, int hospitalId, int clinicId)
    {
        var endpoint = $"/api/kurum/hekim/hekim-klinik/hekim-select-input/anakurum/{anaKurumId}/kurum/{hospitalId}/klinik/{clinicId}";
        var response = await _client.Get<List<GenericResponseModel>>(MHRSUrls.BaseUrl, endpoint);
        return response?.Data ?? new List<GenericResponseModel>();
    }

    public async Task<SlotSearchResult> SearchSlotsAsync(SlotSearchForm form)
    {
        var request = new SlotRequestModel
        {
            MhrsIlId = form.ProvinceId,
            MhrsIlceId = form.DistrictId,
            MhrsKlinikId = form.ClinicId,
            MhrsKurumId = form.HospitalId,
            MuayeneYeriId = -1,
            MhrsHekimId = -1,
            BaslangicZamani = NormalizeStartDate(form.StartDate),
            BitisZamani = NormalizeEndDate(form.EndDate)
        };

        var response = await _client.Post<List<SlotResponseModel>>(MHRSUrls.BaseUrl, MHRSUrls.GetSlots, request);
        var result = new SlotSearchResult();

        if (response == null)
        {
            result.ErrorMessage = "Slot yaniti alinamadi";
            return result;
        }

        if (!response.Success || response.Data == null)
        {
            var firstError = response.Errors.FirstOrDefault();
            if (firstError != null)
            {
                result.ErrorCode = firstError.kodu;
                result.ErrorMessage = firstError.mesaj;
                result.SessionEnded = firstError.kodu == "LGN2001";
            }
            else
            {
                result.ErrorMessage = "Slot sorgusu basarisiz oldu";
            }

            return result;
        }

        var allSlots = FlattenSlots(response.Data);

        var filteredSlots = allSlots.Where(slot =>
        {
            var placeMatch = form.PlaceId == -1 || slot.MuayeneYeriId == form.PlaceId;
            var doctorMatch = form.DoctorId == -1 || slot.MhrsHekimId == form.DoctorId;
            if (!placeMatch || !doctorMatch)
            {
                return false;
            }

            if (string.IsNullOrWhiteSpace(slot.BaslangicZamani) || !DateTime.TryParse(slot.BaslangicZamani, out var slotTime))
            {
                return false;
            }

            if (form.IncludedHours.Any())
            {
                return form.IncludedHours.Contains(slotTime.Hour);
            }

            if (form.ExcludedHours.Any())
            {
                return !form.ExcludedHours.Contains(slotTime.Hour);
            }

            return true;
        }).OrderBy(x => x.BaslangicZamani).ToList();

        result.Slots = filteredSlots;
        return result;
    }

    public async Task<ApiResult> MakeAppointmentAsync(BookAppointmentForm form)
    {
        var request = new AppointmentRequestModel
        {
            FkSlotId = form.FkSlotId,
            FkCetvelId = form.FkCetvelId,
            MuayeneYeriId = form.MuayeneYeriId,
            BaslangicZamani = form.BaslangicZamani,
            BitisZamani = form.BitisZamani
        };

        var baseResponse = await _client.PostSimple<object>(MHRSUrls.BaseUrl, MHRSUrls.MakeAppointment, request);
        var rawJson = baseResponse.Messages?.FirstOrDefault();
        if (string.IsNullOrWhiteSpace(rawJson))
        {
            return baseResponse.Success
                ? ApiResult.Ok(message: "Randevu alindi")
                : ApiResult.Fail("Randevu alinamadi");
        }

        DetailedAppointmentResponse? detailed;
        try
        {
            detailed = JsonSerializer.Deserialize<DetailedAppointmentResponse>(rawJson);
        }
        catch
        {
            return baseResponse.Success
                ? ApiResult.Ok(message: "Randevu alindi")
                : ApiResult.Fail("Randevu alinamadi", "PARSE_ERR");
        }

        if (detailed == null)
        {
            return ApiResult.Fail("Randevu yaniti islenemedi", "EMPTY_DETAIL");
        }

        if (detailed.success && !detailed.errors.Any())
        {
            return ApiResult.Ok(message: "Randevu basariyla alindi");
        }

        if (form.AllowCancelAndRebook && detailed.warnings.Any(w => w.kodu == "RND5015"))
        {
            var cancelRebookRequest = new RandevuIptalEtYeniAlRequestModel
            {
                FkSlotId = form.FkSlotId,
                FkCetvelId = form.FkCetvelId,
                MuayeneYeriId = form.MuayeneYeriId,
                BaslangicZamani = form.BaslangicZamani,
                BitisZamani = form.BitisZamani
            };

            var cancelResp = await _client.PostForCancelAndRebook(MHRSUrls.BaseUrl, MHRSUrls.CancelAndRebookAppointment, cancelRebookRequest);
            var cancelRaw = cancelResp.Messages?.FirstOrDefault();

            if (!string.IsNullOrWhiteSpace(cancelRaw))
            {
                try
                {
                    var apiResp = JsonSerializer.Deserialize<ApiResponse<object>>(cancelRaw);
                    if (apiResp != null && apiResp.Success && apiResp.Infos.Any(i => i.kodu == "RND5036"))
                    {
                        return ApiResult.Ok(message: "Mevcut randevu iptal edilip yeni randevu alindi");
                    }
                }
                catch
                {
                    return ApiResult.Fail("Iptal ve yeniden alma yaniti islenemedi", "PARSE_ERR");
                }
            }
        }

        var error = detailed.errors.FirstOrDefault();
        if (error != null)
        {
            return ApiResult.Fail(error.mesaj ?? "Randevu alinamadi", error.kodu);
        }

        var warning = detailed.warnings.FirstOrDefault();
        if (warning != null)
        {
            return ApiResult.Fail(warning.mesaj ?? "Randevu alinamadi", warning.kodu);
        }

        return ApiResult.Fail("Randevu alinamadi");
    }

    private static List<SubSlot> FlattenSlots(List<SlotResponseModel> data)
    {
        var slots = new List<SubSlot>();

        foreach (var day in data)
        {
            if (day.HekimSlotList == null)
            {
                continue;
            }

            foreach (var doctor in day.HekimSlotList)
            {
                if (doctor.MuayeneYeriSlotList == null)
                {
                    continue;
                }

                foreach (var place in doctor.MuayeneYeriSlotList)
                {
                    if (place.SaatSlotList == null)
                    {
                        continue;
                    }

                    foreach (var hour in place.SaatSlotList.Where(x => x.Bos))
                    {
                        if (hour.SlotList == null)
                        {
                            continue;
                        }

                        foreach (var slot in hour.SlotList.Where(x => x.Bos && x.SubSlot != null))
                        {
                            var subSlot = slot.SubSlot!;
                            subSlot.HekimAdi = $"{doctor.Hekim?.Ad} {doctor.Hekim?.Soyad}".Trim();
                            subSlot.MuayeneYeriAdi = place.MuayeneYeri?.Adi;
                            subSlot.KurumAdi = doctor.Kurum?.KurumAdi;
                            slots.Add(subSlot);
                        }
                    }
                }
            }
        }

        return slots;
    }

    private static string? NormalizeStartDate(string? uiDate)
    {
        if (string.IsNullOrWhiteSpace(uiDate))
        {
            return null;
        }

        if (!DateTime.TryParseExact(uiDate, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out var dt))
        {
            return null;
        }

        return dt.ToString("yyyy-MM-dd HH:mm:ss", CultureInfo.InvariantCulture);
    }

    private static string? NormalizeEndDate(string? uiDate)
    {
        if (string.IsNullOrWhiteSpace(uiDate))
        {
            return null;
        }

        if (!DateTime.TryParseExact(uiDate, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out var dt))
        {
            return null;
        }

        return dt.AddHours(23).AddMinutes(59).AddSeconds(59).ToString("yyyy-MM-dd HH:mm:ss", CultureInfo.InvariantCulture);
    }

    private static string? ExtractToken(string? raw)
    {
        if (string.IsNullOrWhiteSpace(raw))
        {
            return null;
        }

        var trimmed = raw.Trim();
        if (trimmed.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase))
        {
            trimmed = trimmed[7..].Trim();
        }

        if (trimmed.Count(c => c == '.') == 2)
        {
            return trimmed;
        }

        try
        {
            using var doc = JsonDocument.Parse(trimmed);
            if (doc.RootElement.ValueKind == JsonValueKind.Object)
            {
                foreach (var key in new[] { "token", "jwt", "accessToken", "access_token", "Token", "Jwt" })
                {
                    if (doc.RootElement.TryGetProperty(key, out var tokenElement))
                    {
                        var tokenValue = tokenElement.GetString();
                        if (!string.IsNullOrWhiteSpace(tokenValue) && tokenValue.Count(c => c == '.') == 2)
                        {
                            return tokenValue;
                        }
                    }
                }
            }
        }
        catch
        {
            // Ignore parse errors and fall back to null.
        }

        return null;
    }
}
