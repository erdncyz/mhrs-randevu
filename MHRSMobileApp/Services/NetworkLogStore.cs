using System.IO;
using Microsoft.Maui.Storage;

namespace MHRSMobileApp.Services;

public static class NetworkLogStore
{
    private static readonly object Sync = new();
    private static string LogPath => Path.Combine(FileSystem.AppDataDirectory, "network.log");

    public static void Append(string line)
    {
        lock (Sync)
        {
            var safeLine = string.IsNullOrWhiteSpace(line) ? "(empty)" : line.Trim();
            var directory = Path.GetDirectoryName(LogPath);
            if (!string.IsNullOrWhiteSpace(directory))
            {
                Directory.CreateDirectory(directory);
            }

            File.AppendAllText(LogPath, safeLine + Environment.NewLine);
            TrimIfNeeded();
        }
    }

    public static string ReadTail(int maxLines = 250)
    {
        lock (Sync)
        {
            if (!File.Exists(LogPath))
            {
                return "Henuz network log yok.";
            }

            var lines = File.ReadAllLines(LogPath);
            if (lines.Length == 0)
            {
                return "Henuz network log yok.";
            }

            var start = Math.Max(0, lines.Length - maxLines);
            return string.Join(Environment.NewLine, lines[start..]);
        }
    }

    public static void Clear()
    {
        lock (Sync)
        {
            if (File.Exists(LogPath))
            {
                File.Delete(LogPath);
            }
        }
    }

    private static void TrimIfNeeded()
    {
        var fileInfo = new FileInfo(LogPath);
        if (!fileInfo.Exists || fileInfo.Length <= 600 * 1024)
        {
            return;
        }

        var lines = File.ReadAllLines(LogPath);
        var keepFrom = Math.Max(0, lines.Length - 1200);
        File.WriteAllLines(LogPath, lines[keepFrom..]);
    }
}
