using System;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;

/// <summary>
/// Helper class for security related operations
/// </summary>
public static class SecurityHelper
{
    /// <summary>
    /// Hashes a password using SHA256
    /// </summary>
    /// <param name="password">The plain text password</param>
    /// <returns>The hashed password</returns>
    public static string HashPassword(string password)
    {
        if (string.IsNullOrEmpty(password)) return string.Empty;

        using (SHA256 sha256 = SHA256.Create())
        {
            byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
            StringBuilder builder = new StringBuilder();
            for (int i = 0; i < bytes.Length; i++)
            {
                builder.Append(bytes[i].ToString("x2"));
            }
            return builder.ToString();
        }
    }

    /// <summary>
    /// Checks if a string appears to be a SHA256 hash (64 hex characters)
    /// </summary>
    /// <param name="text">The string to check</param>
    /// <returns>True if it looks like a hash, false otherwise</returns>
    public static bool IsPasswordHash(string text)
    {
        if (string.IsNullOrEmpty(text) || text.Length != 64)
            return false;

        // Check if all characters are hex digits
        return Regex.IsMatch(text, "^[a-fA-F0-9]{64}$");
    }
}
