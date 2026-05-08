using MHRS_OtomatikRandevu.Models.Web;

namespace MHRS_OtomatikRandevu.Services.Abstracts;

public interface INotificationService
{
    Task<ApiResult> SendTelegramAsync(string botToken, string chatId, string message);
}
