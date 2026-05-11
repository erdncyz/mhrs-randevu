using System.Net.Http.Json;
using MHRS_OtomatikRandevu.Models.Web;

namespace MHRSMobileApp.Services;

public static class TelegramClient
{
    public static async Task<ApiResult> SendAsync(string botToken, string chatId, string message)
    {
        if (string.IsNullOrWhiteSpace(botToken) || string.IsNullOrWhiteSpace(chatId))
        {
            return ApiResult.Fail("Telegram ayarlari eksik", "NOTIFY_CONFIG_MISSING");
        }

        using var client = new HttpClient();
        var endpoint = $"https://api.telegram.org/bot{botToken.Trim()}/sendMessage";

        try
        {
            var response = await client.PostAsJsonAsync(endpoint, new
            {
                chat_id = chatId.Trim(),
                text = string.IsNullOrWhiteSpace(message) ? "Bildirim" : message.Trim()
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
