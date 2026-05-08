#nullable enable
using System;
using System.IO;

namespace MHRS_OtomatikRandevu.Utils
{
    public enum LogLevel
    {
        INFO,
        WARN,
        ERROR
    }

    public static class Logger
    {
        private static readonly string LogFilePath = Path.Combine(AppContext.BaseDirectory, "mhrs_web_log.txt");
        private static readonly object LockObject = new object();

        private static void Log(LogLevel level, string message)
        {
            try
            {
                lock (LockObject)
                {
                    File.AppendAllText(
                        LogFilePath,
                        $"{DateTime.Now:yyyy-MM-dd HH:mm:ss.fff} [{level}] - {message}{Environment.NewLine}");
                }
            }
            catch
            {
                // Logging errors should never break API flow.
            }
        }

        public static void Warn(string message) => Log(LogLevel.WARN, message);

        public static void Error(string message, Exception? ex = null)
        {
            if (ex != null)
            {
                message += $"{Environment.NewLine}--- EXCEPTION DETAILS ---{Environment.NewLine}{ex}{Environment.NewLine}-------------------------";
            }

            Log(LogLevel.ERROR, message);
        }
    }
}