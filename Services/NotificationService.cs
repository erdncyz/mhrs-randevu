using System.Net.Http.Json;
using MHRS_OtomatikRandevu.Models.Web;
using MHRS_OtomatikRandevu.Services.Abstracts;

namespace MHRS_OtomatikRandevu.Services;

public class NotificationService : INotificationService
{
    private readonly HttpClient _httpClient;

    public NotificationService(HttpClient httpClient)
    {
        _httpClient = httpClient;
    }

    public async Task<ApiResult> SendTelegramAsync(string botToken, string chatId, string message)
    {
        if (string.IsNullOrWhiteSpace(botToken) || string.IsNullOrWhiteSpace(chatId))
        {
            return ApiResult.Fail("Telegram ayarlari eksik", "NOTIFY_CONFIG_MISSING");
        }

        var text = string.IsNullOrWhiteSpace(message) ? "Bildirim" : message.Trim();
        var endpoint = $"https://api.telegram.org/bot{botToken.Trim()}/sendMessage";

        try
        {
            var response = await _httpClient.PostAsJsonAsync(endpoint, new
            {
                chat_id = chatId.Trim(),
                text
            });

            if (!response.IsSuccessStatusCode)
            {
                return ApiResult.Fail("Telegram mesaji gonderilemedi", "NOTIFY_SEND_FAIL");
            }

            return ApiResult.Ok(message: "Bildirim gonderildi");
        }
        catch
        {
            return ApiResult.Fail("Telegram servisine ulasilamadi", "NOTIFY_SEND_ERR");
        }
    }
}
