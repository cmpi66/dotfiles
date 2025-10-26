static const struct arg args[] = {
	/* function format          argument */
    // {kernel_release, "^c#50fa7b^  %s  ", NULL },
    {run_command,  "^c#98be65^  %s ",      "sb-battery.sh" },
    {run_command,  "^c#da8548^ ^b#282c34^ %2s ",     "sb-pacpackages.sh" },
  //{run_command,  "^c#abe9b3^  %s ",      "sb-price.sh" },
    // {run_command,  "^c#e8a2af^  ^b#282c34^ %2s ",     "sb-forecast.sh" },
//    {run_command,  "^c#abe9b3^  %2s ",     "sb-internet.sh" },
    {uptime,   "^c#efefef^  ^b#282c34^  %s  ", NULL },
    {cpu_perc, "^c#c678dd^  ^b#282c34^  %s%%  ", NULL },
    // {cpu_perc, "^b#a9a1e1^ ^c#282c34^ CPU %s%%  ", NULL },
    {ram_used, "^c#46d9ff^ ^b#282c34^  %s  ", NULL },
    {temp,     "^c#ff6c6b^ ^b#282c34^  %s  ",    "/sys/class/thermal/thermal_zone8/temp" },
    //{run_command,"^c#fae380^  %2s    ",   "pacman -Qu | grep -Fcv '[ignored]'" },
    //{run_command,  "^c#fae380^  %2s",     "sb-pacpackages.sh" },
    //{run_command,  "^c#96cdfb^  %s",      "sb-battery.sh" },
    // { run_command, " %4s  ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },

	{disk_free, "^c#bbc2cf^ ^b#282c34^  %s  " , "/" },
	{ datetime, "%s",   "^c#ecbe7b^ ^b#282c34^  %a, %d   %r   " },
	//{wifi_perc, "  %s%% | ", "wlp0s20f" }
	//{disk_total, "%s   " , "/" },
	//{battery_state, "^c#96cdfb^ %s " , "BAT0" },
        //{battery_perc,  "%s%%  ",  "BAT0" },
    {run_command,  "^c#a9a1e1^ ^b#282c34^ %2s ",      "sb-music.sh" },
	
};
