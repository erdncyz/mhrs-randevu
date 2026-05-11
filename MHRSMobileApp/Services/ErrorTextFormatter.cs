using System.Net;
using System.Text.RegularExpressions;

namespace MHRSMobileApp.Services;

public static class ErrorTextFormatter
{
    public static string Clean(string? message)
    {
        if (string.IsNullOrWhiteSpace(message))
        {
            return "Beklenmeyen bir hata olustu.";
        }

        var withoutTags = Regex.Replace(message, "<[^>]*>", " ");
        var decoded = WebUtility.HtmlDecode(withoutTags);
        var normalized = Regex.Replace(decoded, "\\s+", " ").Trim();

        return string.IsNullOrWhiteSpace(normalized)
            ? "Beklenmeyen bir hata olustu."
            : normalized;
    }
}
