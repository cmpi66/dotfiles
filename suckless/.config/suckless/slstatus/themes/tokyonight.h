static const struct arg args[] = {
	/* function format          argument */
   {run_command,  "^c#f7768e^  %2s ",     "mail.sh" },
    {kernel_release, "^c#50fa7b^  %s  ", NULL },
  //{run_command,  "^c#abe9b3^  %s ",      "sb-price.sh" },
    {run_command,  "^c#e0af68^  %2s ",     "forecast.sh" },
   {run_command,  "^c#abe9b3^  %2s ",     "internet.sh" },
    {uptime,   "^c#c0caf5^    %s  ", NULL },
    {cpu_perc, "^c#bb9af7^   %s%%  ", NULL },
    {ram_used, "^c#7dcfff^   %s  ", NULL },
    // {temp,     "^c#f7768e^   %s  ",    "/sys/class/thermal/thermal_zone8/temp" },

	{disk_free, "^c#9aa5ce^  %s  " , "/" },
	//{disk_total, "%s   " , "/" },
	{ datetime, "%s",   "^c#c0af68^  %a %b %d   %r  " },
    {run_command,  "^c#2ac3de^  ^b#24283b^ %2s ",      "music.sh" },
	
};
