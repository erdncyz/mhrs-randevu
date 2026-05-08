using MHRS_OtomatikRandevu.Models.ResponseModels;

namespace MHRS_OtomatikRandevu.Models.Web;

public class TokenImportForm
{
    public string Token { get; set; } = string.Empty;
}

public class TokenImportSuccessData
{
    public string Token { get; set; } = string.Empty;
    public DateTime Expiration { get; set; }
}

public class SlotSearchForm
{
    public int ProvinceId { get; set; }
    public int DistrictId { get; set; }
    public int ClinicId { get; set; }
    public int HospitalId { get; set; } = -1;
    public int PlaceId { get; set; } = -1;
    public int DoctorId { get; set; } = -1;
    public string? StartDate { get; set; }
    public string? EndDate { get; set; }
    public List<int> IncludedHours { get; set; } = new();
    public List<int> ExcludedHours { get; set; } = new();
}

public class BookAppointmentForm
{
    public long FkSlotId { get; set; }
    public long FkCetvelId { get; set; }
    public long MuayeneYeriId { get; set; }
    public string BaslangicZamani { get; set; } = string.Empty;
    public string BitisZamani { get; set; } = string.Empty;
    public bool AllowCancelAndRebook { get; set; } = true;
}

public class ApiResult
{
    public bool Success { get; set; }
    public string? Code { get; set; }
    public string? Message { get; set; }
    public object? Data { get; set; }

    public static ApiResult Ok(object? data = null, string? message = null)
        => new() { Success = true, Data = data, Message = message };

    public static ApiResult Fail(string message, string? code = null)
        => new() { Success = false, Message = message, Code = code };
}

public class SlotSearchResult
{
    public bool SessionEnded { get; set; }
    public string? ErrorCode { get; set; }
    public string? ErrorMessage { get; set; }
    public List<SubSlot> Slots { get; set; } = new();
}

public class NotificationConfigForm
{
    public bool Enabled { get; set; }
    public string? TelegramBotToken { get; set; }
    public string? TelegramChatId { get; set; }
}

public class NotificationSendForm
{
    public string Message { get; set; } = string.Empty;
}
