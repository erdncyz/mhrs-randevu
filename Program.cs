using MHRS_OtomatikRandevu.Models.Web;
using MHRS_OtomatikRandevu.Services;
using MHRS_OtomatikRandevu.Services.Abstracts;
using Microsoft.AspNetCore.Http.Json;

var builder = WebApplication.CreateBuilder(args);

builder.Services.Configure<JsonOptions>(options =>
{
    options.SerializerOptions.PropertyNamingPolicy = null;
});

builder.Services.AddDistributedMemoryCache();
builder.Services.AddSession(options =>
{
    options.Cookie.Name = "mhrs.web.session";
    options.Cookie.HttpOnly = true;
    options.IdleTimeout = TimeSpan.FromHours(4);
});

builder.Services.AddScoped<IClientService, ClientService>();
builder.Services.AddScoped<WebMhrsService>();
builder.Services.AddHttpClient<INotificationService, NotificationService>();

var app = builder.Build();

app.UseDefaultFiles();
app.UseStaticFiles();
app.UseSession();

app.MapGet("/api/health", () => Results.Ok(new { ok = true, app = "MHRS Web" }));

app.MapPost("/api/auth/import-token", async (TokenImportForm form, HttpContext ctx, WebMhrsService service) =>
{
    if (string.IsNullOrWhiteSpace(form.Token))
    {
        return Results.BadRequest(ApiResult.Fail("Token zorunludur"));
    }

    var login = await service.ImportTokenAsync(form);
    if (!login.Success)
    {
        return Results.BadRequest(login);
    }

    if (login.Data is not TokenImportSuccessData loginData)
    {
        return Results.BadRequest(ApiResult.Fail("Token cevabi islenemedi", "TOKEN_DATA_INVALID"));
    }

    ctx.Session.SetString("jwt", loginData.Token);

    return Results.Ok(ApiResult.Ok(new
    {
        expiration = loginData.Expiration
    }, "Resmi MHRS oturumu ice aktarildi"));
});

app.MapPost("/api/auth/logout", (HttpContext ctx) =>
{
    ctx.Session.Clear();
    return Results.Ok(ApiResult.Ok(message: "Cikis yapildi"));
});

app.MapGet("/api/notify/config", (HttpContext ctx, IConfiguration cfg) =>
{
    var (enabled, token, chatId) = ReadNotificationConfig(ctx, cfg);

    return Results.Ok(ApiResult.Ok(new
    {
        enabled,
        telegramBotToken = token,
        telegramChatId = chatId
    }));
});

app.MapPost("/api/notify/config", (NotificationConfigForm form, HttpContext ctx) =>
{
    var token = CleanNotificationInput(form.TelegramBotToken);
    var chatId = CleanNotificationInput(form.TelegramChatId);

    ctx.Session.SetString("notify.enabled", form.Enabled ? "true" : "false");
    ctx.Session.SetString("notify.telegram.token", token);
    ctx.Session.SetString("notify.telegram.chatid", chatId);

    return Results.Ok(ApiResult.Ok(message: "Bildirim ayarlari kaydedildi"));
});

app.MapPost("/api/notify/test", async (HttpContext ctx, IConfiguration cfg, INotificationService notify) =>
{
    var (enabled, token, chatId) = ReadNotificationConfig(ctx, cfg);
    if (!enabled)
    {
        return Results.BadRequest(ApiResult.Fail("Bildirim kapali. Once bildirimleri acin.", "NOTIFY_DISABLED"));
    }

    if (string.IsNullOrWhiteSpace(token) || string.IsNullOrWhiteSpace(chatId))
    {
        return Results.BadRequest(ApiResult.Fail("Telegram token veya chat id eksik.", "NOTIFY_CONFIG_MISSING"));
    }

    var result = await notify.SendTelegramAsync(token, chatId, "MHRS bildirim testi: ayarlar calisiyor.");
    if (!result.Success)
    {
        return Results.BadRequest(result);
    }

    return Results.Ok(result);
});

app.MapPost("/api/notify/send", async (NotificationSendForm form, HttpContext ctx, IConfiguration cfg, INotificationService notify) =>
{
    var (enabled, token, chatId) = ReadNotificationConfig(ctx, cfg);
    if (!enabled)
    {
        return Results.Ok(ApiResult.Ok(new { skipped = true }, "Bildirim kapali"));
    }

    if (string.IsNullOrWhiteSpace(token) || string.IsNullOrWhiteSpace(chatId))
    {
        return Results.BadRequest(ApiResult.Fail("Telegram token veya chat id eksik.", "NOTIFY_CONFIG_MISSING"));
    }

    if (string.IsNullOrWhiteSpace(form.Message))
    {
        return Results.BadRequest(ApiResult.Fail("Bildirim mesaji bos olamaz.", "NOTIFY_MESSAGE_EMPTY"));
    }

    var result = await notify.SendTelegramAsync(token, chatId, form.Message);
    if (!result.Success)
    {
        return Results.BadRequest(result);
    }

    return Results.Ok(result);
});

app.MapGet("/api/meta/provinces", async (HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    var provinces = await service.GetProvincesAsync();
    return Results.Ok(ApiResult.Ok(provinces));
});

app.MapGet("/api/meta/districts/{provinceId:int}", async (int provinceId, HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    var districts = await service.GetDistrictsAsync(provinceId);
    return Results.Ok(ApiResult.Ok(districts));
});

app.MapGet("/api/meta/clinics", async (int provinceId, int districtId, HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    var clinics = await service.GetClinicsAsync(provinceId, districtId);
    return Results.Ok(ApiResult.Ok(clinics));
});

app.MapGet("/api/meta/hospitals", async (int provinceId, int districtId, int clinicId, HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    var hospitals = await service.GetHospitalsAsync(provinceId, districtId, clinicId);
    return Results.Ok(ApiResult.Ok(hospitals));
});

app.MapGet("/api/meta/places", async (int hospitalId, int clinicId, HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    if (hospitalId <= 0)
    {
        return Results.Ok(ApiResult.Ok(new List<object>()));
    }

    var places = await service.GetPlacesAsync(hospitalId, clinicId);
    return Results.Ok(ApiResult.Ok(places));
});

app.MapGet("/api/meta/doctors", async (int anaKurumId, int hospitalId, int clinicId, HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    if (hospitalId <= 0)
    {
        return Results.Ok(ApiResult.Ok(new List<object>()));
    }

    var doctors = await service.GetDoctorsAsync(anaKurumId, hospitalId, clinicId);
    return Results.Ok(ApiResult.Ok(doctors));
});

app.MapPost("/api/search/slots", async (SlotSearchForm form, HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    if (form.ProvinceId <= 0 || form.ClinicId <= 0)
    {
        return Results.BadRequest(ApiResult.Fail("Il, ilce ve klinik secimi zorunludur"));
    }

    var result = await service.SearchSlotsAsync(form);
    if (!string.IsNullOrWhiteSpace(result.ErrorMessage))
    {
        var code = result.ErrorCode ?? "SEARCH_FAIL";
        return Results.BadRequest(ApiResult.Fail(result.ErrorMessage!, code));
    }

    return Results.Ok(ApiResult.Ok(result.Slots));
});

app.MapPost("/api/appointment/book", async (BookAppointmentForm form, HttpContext ctx, WebMhrsService service) =>
{
    if (!TryUseSessionToken(ctx, service, out var unauthorized)) return unauthorized!;

    if (form.FkSlotId <= 0 || string.IsNullOrWhiteSpace(form.BaslangicZamani) || string.IsNullOrWhiteSpace(form.BitisZamani))
    {
        return Results.BadRequest(ApiResult.Fail("Gecerli bir slot secin"));
    }

    var result = await service.MakeAppointmentAsync(form);
    if (!result.Success)
    {
        return Results.BadRequest(result);
    }

    return Results.Ok(result);
});

app.Run();

static bool TryUseSessionToken(HttpContext context, WebMhrsService service, out IResult? unauthorized)
{
    var token = context.Session.GetString("jwt");
    if (string.IsNullOrWhiteSpace(token))
    {
        unauthorized = Results.Unauthorized();
        return false;
    }

    service.UseToken(token);
    unauthorized = null;
    return true;
}

static (bool enabled, string? token, string? chatId) ReadNotificationConfig(HttpContext ctx, IConfiguration cfg)
{
    var enabledRaw = ctx.Session.GetString("notify.enabled");
    var enabled = string.Equals(enabledRaw, "true", StringComparison.OrdinalIgnoreCase);

    var token = (ctx.Session.GetString("notify.telegram.token") ?? string.Empty).Trim();
    var chatId = (ctx.Session.GetString("notify.telegram.chatid") ?? string.Empty).Trim();

    if (string.IsNullOrWhiteSpace(token))
    {
        token = cfg["TELEGRAM_API_TOKEN"]?.Trim();
    }

    if (string.IsNullOrWhiteSpace(chatId))
    {
        chatId = cfg["TELEGRAM_CHAT_ID"]?.Trim();
    }

    if (IsPlaceholderValue(token))
    {
        token = string.Empty;
    }

    if (IsPlaceholderValue(chatId))
    {
        chatId = string.Empty;
    }

    return (enabled, token, chatId);
}

static bool IsPlaceholderValue(string? value)
{
    if (string.IsNullOrWhiteSpace(value))
    {
        return true;
    }

    var normalized = value.Trim();
    return normalized.StartsWith("BURAYA_", StringComparison.OrdinalIgnoreCase);
}

static string CleanNotificationInput(string? value)
{
    var normalized = (value ?? string.Empty).Trim();
    return IsPlaceholderValue(normalized) ? string.Empty : normalized;
}
