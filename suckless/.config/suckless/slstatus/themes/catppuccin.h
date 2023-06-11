static const struct arg args[] = {
	/* function format          argument */
    // {kernel_release, "^c#abe9b3^  %s  ", NULL },
    //{run_command,  "^c#abe9b3^  %s ",      "sb-price.sh" },
    // {run_command,  " %2s ",     "bluetooth.sh" },
    {run_command,  "^c#b7bdf8^ ^b#1e1e2e^ %2s ",     "mail.sh" },
    {run_command,  "^c#abe9b3^ ^b#1e1e2e^ %2s ",     "torrent.sh" },
    {run_command,  "^c#e8a2af^ ^b#1e1e2e^ %2s ",     "pacpackages.sh" },
    {run_command,  "^c#fae380^ ^b#1e1e2e^ %s ",      "battery.sh" },
    //{run_command,  "^c#e8a2af^  %2s ",     "sb-forecast.sh" },
   {run_command,  "^c#f5bde6^  %2s ",     "internet.sh" },
    {uptime,   "^c#c9cbff^ ^b#1e1e2e^  %s  ", NULL },
    {cpu_perc, "^c#ddb6f2^ ^b#1e1e2e^  %s%%  ", NULL },
    {ram_used, "^c#74c7ec^ ^b#1e1e2e^  %s  ", NULL },
    {temp,     "^c#f28fad^ ^b#1e1e2e^  %s  ",    "/sys/class/thermal/thermal_zone8/temp" },
    // { run_command, " %4s  ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },

	//{wifi_perc, "  %s%% | ", "wlp0s20f" }
	{disk_free, "^c#f2cdcd^ ^b#1e1e2e^ Local  %s  " , "/" },
	// {disk_free, "^c#91d7e3^ ^b#1e1e2e^ E2  %s  " , "/mnt/idrive/" },
	// { datetime, "%s",   "^c#f8bd96^ ^b#1e1e2e^  %r   " },
	{ datetime, "%s",   "^c#f8bd96^  %a %b %d   %r   " },
    {run_command,  "^c#74c7Ec^  ^b#1e1e2e^ %2s ",      "music.sh" },

	
};
