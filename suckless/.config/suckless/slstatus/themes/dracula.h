static const struct arg args[] = {
	/* function format          argument */
    // {kernel_release, "^c#50fa7b^  %s  ", NULL },
  //{run_command,  "^c#abe9b3^  %s ",      "sb-price.sh" },
    // {run_command,  "^c#50fa7b^  %s ",      "sb-battery.sh" },
    //{run_command,  "^c#e8a2af^  %2s ",     "sb-forecast.sh" },
//    {run_command,  "^c#abe9b3^  %2s ",     "sb-internet.sh" },
    // {run_command,  "^c#ffb86c^  %2s ",     "sb-pacpackages.sh" },
    {uptime,   "^c#f8f8f2^    %s  ", NULL },
    {cpu_perc, "^c#bd93f9^   %s%%  ", NULL },
    {ram_used, "^c#8be9fd^   %s  ", NULL },
    // {temp,     "^c#ff5555^   %s  ",    "/sys/class/thermal/thermal_zone8/temp" },
    //{run_command,"^c#fae380^  %2s    ",   "pacman -Qu | grep -Fcv '[ignored]'" },
    //{run_command,  "^c#fae380^  %2s",     "sb-pacpackages.sh" },
    //{run_command,  "^c#96cdfb^  %s",      "sb-battery.sh" },
    // { run_command, " %4s  ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },

	//{wifi_perc, "  %s%% | ", "wlp0s20f" }
	{disk_free, "^c#ff79c6^  %s  " , "/" },
	//{disk_total, "%s   " , "/" },
	//{battery_state, "^c#96cdfb^ %s " , "BAT0" },
        //{battery_perc,  "%s%%  ",  "BAT0" },
	{ datetime, "%s",   "^c#ffb86c^  %a %b %d   %r  " },
    {run_command,  "^c#8be9fd^  ^b#282a36^ %2s ",      "music.sh" },

	
};
