static const struct arg args[] = {
	/* function format          argument */
    {kernel_release, "^c#50fa7b^  %s  ", NULL },
  //{run_command,  "^c#abe9b3^  %s ",      "sb-price.sh" },
    // {run_command,  "^c#9ece6a^  %s ",      "sb-battery.sh" },
    {run_command,  "^c#e0af68^  %2s ",     "forecast.sh" },
   {run_command,  "^c#abe9b3^  %2s ",     "internet.sh" },
    // {run_command,  "^c#ff9e64^  %2s ",     "sb-pacpackages.sh" },
    {uptime,   "^c#c0caf5^    %s  ", NULL },
    {cpu_perc, "^c#bb9af7^   %s%%  ", NULL },
    {ram_used, "^c#7dcfff^   %s  ", NULL },
    // {temp,     "^c#f7768e^   %s  ",    "/sys/class/thermal/thermal_zone8/temp" },
    //{run_command,"^c#fae380^  %2s    ",   "pacman -Qu | grep -Fcv '[ignored]'" },
    //{run_command,  "^c#fae380^  %2s",     "sb-pacpackages.sh" },
    //{run_command,  "^c#96cdfb^  %s",      "sb-battery.sh" },
    // { run_command, " %4s  ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },

	//{wifi_perc, "  %s%% | ", "wlp0s20f" }
	{disk_free, "^c#9aa5ce^  %s  " , "/" },
	//{disk_total, "%s   " , "/" },
	//{battery_state, "^c#96cdfb^ %s " , "BAT0" },
        //{battery_perc,  "%s%%  ",  "BAT0" },
	{ datetime, "%s",   "^c#c0af68^  %a %b %d   %r  " },
    {run_command,  "^c#2ac3de^  ^b#24283b^ %2s ",      "music.sh" },
	
};
