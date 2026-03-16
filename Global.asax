<%@ Application Language="C#" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Import Namespace="System.Reflection" %>
<%@ Import Namespace="System.Text.RegularExpressions" %>
<%@ Import Namespace="System.Net.Configuration" %>
<%@ Import Namespace="System.Web.Configuration" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        ResolveEnvironmentVariablesInConnectionStrings();
        ResolveEnvironmentVariablesInSmtpSettings();
    }

    private void ResolveEnvironmentVariablesInConnectionStrings()
    {
        foreach (ConnectionStringSettings settings in ConfigurationManager.ConnectionStrings)
        {
            if (string.IsNullOrEmpty(settings.ConnectionString)) continue;

            string resolved = ResolvePlaceholders(settings.ConnectionString);
            if (resolved != settings.ConnectionString)
            {
                try {
                    SetReadOnly(settings, false);
                    settings.ConnectionString = resolved;
                    SetReadOnly(settings, true);
                } catch (Exception) {
                    // Log or handle error if reflection fails
                }
            }
        }
    }

    private void ResolveEnvironmentVariablesInSmtpSettings()
    {
        try {
            var section = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
            if (section != null && section.Network != null)
            {
                bool changed = false;
                string resolvedPassword = ResolvePlaceholders(section.Network.Password);
                string resolvedUser = ResolvePlaceholders(section.Network.UserName);

                if (resolvedPassword != section.Network.Password || resolvedUser != section.Network.UserName)
                {
                    SetReadOnly(section.Network, false);
                    section.Network.Password = resolvedPassword;
                    section.Network.UserName = resolvedUser;
                    SetReadOnly(section.Network, true);
                }
            }
        } catch (Exception) {
            // Log or handle error
        }
    }

    private string ResolvePlaceholders(string input)
    {
        if (string.IsNullOrEmpty(input)) return input;

        return Regex.Replace(input, @"\${([^}]+)}", match =>
        {
            string varName = match.Groups[1].Value;
            string envValue = Environment.GetEnvironmentVariable(varName);
            return envValue ?? match.Value;
        });
    }

    private void SetReadOnly(ConfigurationElement element, bool readOnly)
    {
        // For .NET 4.0, the field is "_readOnly" in ConfigurationElement
        var field = typeof(ConfigurationElement).GetField("_readOnly", BindingFlags.Instance | BindingFlags.NonPublic);
        if (field != null)
        {
            field.SetValue(element, readOnly);
        }
    }

</script>
