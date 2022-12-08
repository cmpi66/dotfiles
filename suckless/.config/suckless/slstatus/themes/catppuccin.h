static const struct arg args[] = {
	/* function format          argument */
    // {kernel_release, "^c#abe9b3^  %s  ", NULL },
    //{run_command,  "^c#abe9b3^  %s ",      "sb-price.sh" },
    {run_command,  "^c#fae380^ ^b#161320^ %s ",      "battery.sh" },
    //{run_command,  "^c#e8a2af^  %2s ",     "sb-forecast.sh" },
   {run_command,  "^c#abe9b3^  %2s ",     "internet.sh" },
    {run_command,  "^c#e8a2af^ ^b#161320^ %2s ",     "pacpackages.sh" },
    {uptime,   "^c#c9cbff^ ^b#161320^  %s  ", NULL },
    {cpu_perc, "^c#ddb6f2^ ^b#161320^  %s%%  ", NULL },
    {ram_used, "^c#74c7ec^ ^b#161320^  %s  ", NULL },
    {temp,     "^c#f28fad^ ^b#161320^  %s  ",    "/sys/class/thermal/thermal_zone8/temp" },
    //{run_command,"^c#fae380^  %2s    ",   "pacman -Qu | grep -Fcv '[ignored]'" },
    //{run_command,  "^c#fae380^  %2s",     "sb-pacpackages.sh" },
    //{run_command,  "^c#96cdfb^  %s",      "sb-battery.sh" },
    // { run_command, " %4s  ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },

	//{wifi_perc, "  %s%% | ", "wlp0s20f" }
	{disk_free, "^c#f2cdcd^ ^b#161320^  %s  " , "/" },
	//{disk_total, "%s   " , "/" },
	//{battery_state, "^c#96cdfb^ %s " , "BAT0" },
        //{battery_perc,  "%s%%  ",  "BAT0" },
	// { datetime, "%s",   "^c#f8bd96^ ^b#161320^  %r   " },
	{ datetime, "%s",   "^c#f8bd96^  %a %b %d   %r   " },
    {run_command,  "^c#74c7Ec^  ^b#161320^ %2s ",      "music.sh" },

	
};
