/* See LICENSE file for copyright and license details. */

/* Constants */
#define TERMINAL "alacritty"
#define TERMCLASS "Alacritty"
#define BROWSER "firefox"

/* appearance */
static const unsigned int borderpx  = 3;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int gappih    = 13;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 13;       /* vert inner gap between windows */
static const unsigned int gappoh    = 13;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 13;       /* vert outer gap between windows and screen edge */
static const int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const int horizpadbar        = 4;        /* horizontal padding for statusbar */
static const int vertpadbar         = 4;        /* vertical padding for statusbar */
static const int vertpad            = 11;       /* vertical padding of bar */
static const int sidepad            = 0;       /* horizontal padding of bar */
static const char *fonts[]          = 
{  
 // "Jetbrains Mono:style=Bold:size=13:antialias=true:autohint=true",
 // "Font Awesome 6 Free Solid:pixelsize=16",
 // "Font Awesome 6 Brands:pixelsize=16",
 // "JetBrainsMono Nerd Font:style=Bold:size=13:antialias=true:autohint=true"
 // "Jetbrains Mono:style=Bold:size=9:antialias=true:autohint=true",
 // "Font Awesome 6 Free Solid:pixelsize=16",
 // "Font Awesome 6 Brands:pixelsize=16",
 // "JetBrainsMono Nerd Font:style=Bold:size=12:antialias=true:autohint=true"
 "Fira Code Mono:style=Bold:size=9:antialias=true:autohint=true",
 "Font Awesome 6 Free Solid:pixelsize=15",
 "Font Awesome 6 Brands:pixelsize=15",
 "Fira Code Nerd Font:style=Bold:size=11:antialias=true:autohint=true"




};

 static const char dmenufont[]       = "Jetbrains Mono:style=Bold:size=9:antialias=true:autohint=true";
 // static const char dmenufont[]       = "Fira Code Mono:style=Bold:size=9:antialias=true:autohint=true";

// #include "themes/dracula.h"
//#include "themes/tokyonight.h"
//#include "themes/onedark.h"
//#include "themes/catppuccin.h"
//#include "themes/nord.h"
//include "themes/gruvbox.h"
//#include "themes/gruvboxred.h"
#include "themes/doomone.h"
// #include "/home/chris/.cache/wal/colors-wal-dwm.h"
//
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_gray1, col_cyan  },
	[SchemeTitle]  = { col_gray1, col_cyan,  col_cyan  },
};

typedef struct {
 const char *name;
 const void *cmd;
} Sp;

const char *spcmd1[] = {"alacritty", "--class", "spterm", "--config-file", "/home/chris/.config/alacritty/scratch1.yml","-e", "pulsemixer", NULL };
const char *spcmd2[] = {"alacritty", "--class", "spfm", "--config-file", "/home/chris/.config/alacritty/scratch2.yml", NULL };
// const char *spcmd3[] = {"alacritty", "--class", "spfm", "--config-file", "/home/chris/.config/alacritty/ranger-pywal.yml", "-e", "ranger", NULL };
// const char *spcmd1[] = {"st", "-n", "spterm", "-g", "80x20", NULL };
// const char *spcmd2[] = {"st", "-n", "spfm", "-g", "95x25", "-e",  NULL };
// const char *spcmd2[] = {"st", "-n", "spfm", "-g", "100x30", "-e", "lf", NULL };
const char *spcmd3[] = {"keepassxc", NULL };
static Sp scratchpads[] = {
    /* name          cmd  */
   {"spterm",      spcmd1},
   {"spfm",        spcmd2},
   {"spranger",   spcmd3},
};


/* tagging */
// static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
static const char *tags[] = { "??? 1", "??? 2", "??? 3", "??? 4", "??? 5", "??? 6", "??? 7", "??? 8", "??? 9" };

static const unsigned int ulinepad	= 5;	/* horizontal padding between the underline and tag */
static const unsigned int ulinestroke	= 2;	/* thickness / height of the underline */
static const unsigned int ulinevoffset	= 0;	/* how far above the bottom of the bar the line should appear */
static const int ulineall 		= 0;	/* 1 to show underline on all tags, 0 for just the active ones */

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
    { "Gimp",     NULL,         NULL,       0,             1,           -1 },
    { "Yad",      NULL,         NULL,       0,             1,           -1 },
    { "Pam_gnupg",      NULL,         NULL,       0,             1,           -1 },
    { NULL,       "spterm",     NULL,       SPTAG(0),       1,           -1 },
    { NULL,       "spfm",       NULL,       SPTAG(1),       1,           -1 },
    { NULL,       "keepassxc",  NULL,       SPTAG(2),       0,           -1 },

};

/* layout(s) */
static const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

#include "layouts.c"
static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
	{ "|M|",      centeredmaster },
	{ ">M>",      centeredfloatingmaster },
	{ "HHH",      grid },
};

/* key definitions */
#define MODKEY Mod4Mask
#define MODKEY1 Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *termcmd[]  = { TERMINAL, NULL };
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run","-i","-p", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray1, NULL };
static const char *brdowncmd[] = { "brightnessctl", "set", "5%-", NULL };
static const char *brupcmd[] = { "brightnessctl", "set", "5%+", NULL };
//static const char *dmenucmd[] = { "dmenu_run","-l", "15", "fn", dmenufont, "-p","nb", col_gray1, "nf", col_gray3, "sb", col_cyan, "sf", col_gray4, "Run : ", NULL };
//static const char *dmenucmd[] = { "dmenu_run","-i","-p", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
//static const char *upvol[]   = { "/usr/bin/pactl", "set-sink-volume", "0", "+5%",     NULL };
//static const char *downvol[] = { "/usr/bin/pactl", "set-sink-volume", "0", "-5%",     NULL };
//static const char *mutevol[] = { "/usr/bin/pactl", "set-sink-mute",   "0", "toggle",  NULL };

#include <X11/XF86keysym.h>
#include "shiftview.c"
static Key keys[] = {
//start_keys
  /* modifier                     key        function        argument */
     //{ 0,                       XF86XK_AudioLowerVolume, spawn, {.v = downvol } },
	//{ 0,                       XF86XK_AudioMute, spawn, {.v = mutevol } },
	//{ 0,                       XF86XK_AudioRaiseVolume, spawn, {.v = upvol   } },   
 { 0, XF86XK_MonBrightnessUp,   spawn,                       {.v = brupcmd} },
 { 0, XF86XK_MonBrightnessDown, spawn,                       {.v = brdowncmd} },
  { MODKEY,                       XK_d,      spawn,          {.v = dmenucmd } },

  { MODKEY|ShiftMask,		          XK_d,		spawn,		         {.v = (const char*[]){ "rofi", "-show","drun", "-show-icons", NULL } } },

  { MODKEY,		                    XK_c,		spawn,		         SHCMD("clipmenu -i -h 4 -fn Jetbrains:size=9 -nb '#282c34' -nf '#efefef' -sb '#51afef' -sf '#efefef'") },
  { MODKEY|ShiftMask,		          XK_c,		spawn,		         {.v = (const char*[]){ "rofi", "-show","calc", "-no-show-match", "-no-sort", NULL } } },
  
	{ MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
   // { MODKEY,                      XK_F1,      spawn,          {.v = keyscmd } },
{ MODKEY,		                     	XK_BackSpace,	spawn,	    {.v = (const char*[]){ "sysact", NULL } } },
{ MODKEY|ShiftMask,		            XK_BackSpace,	spawn,	   SHCMD("i3lock -C -i /home/chris/.local/bin/arch-wallpaper.jpg")  },
  { MODKEY,		          	        XK_w,		spawn,            {.v = (const char*[]){ BROWSER, NULL } } },


  // { MODKEY|ShiftMask,			        XK_w,		spawn,		        {.v = (const char*[]){ TERMINAL,"--class", "Alacritty", "-e","nvim", "~/media/Documents/vimwiki/index.md", NULL } } },
  { MODKEY|ShiftMask,			        XK_w,		spawn,		        SHCMD("alacritty --class Alacritty -e nvim ~/media/Documents/vimwiki/index.md")  },

  { MODKEY,		          	        XK_e,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "neomutt", NULL } } },

  { MODKEY|ShiftMask,		         	XK_e,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "newsboat", NULL } } },

  { MODKEY,		          	        XK_r,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "lfub", NULL } } },

  { MODKEY|ShiftMask,		          XK_r,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "sc-im", NULL } } },

  { MODKEY,		          	        XK_p,		spawn,		         {.v = (const char*[]){ "okular", NULL } } },
  { MODKEY|ShiftMask,		          XK_p,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "htop", NULL } } },

  { MODKEY,		          	        XK_a,		spawn,		         {.v = (const char*[]){ "upwork", NULL } } },

  { MODKEY|ShiftMask,		          XK_a,		spawn,		         {.v = (const char*[]){ "st", "-e", "abook", NULL } } },

  { MODKEY,		                   XK_m,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "ncmpcpp", NULL } } },
 { MODKEY,		                   	XK_bracketleft,		spawn,		{.v = (const char*[]){ "mpc", "seek", "-10", NULL } } },
	{ MODKEY|ShiftMask,	           	XK_bracketleft,		spawn,		{.v = (const char*[]){ "mpc", "seek", "-60", NULL } } },
	{ MODKEY,		                   	XK_bracketright,	spawn,		{.v = (const char*[]){ "mpc", "seek", "+10", NULL } } },
	{ MODKEY|ShiftMask,		          XK_bracketright,	spawn,		{.v = (const char*[]){ "mpc", "seek", "+60", NULL } } },

	{ MODKEY,		          XK_semicolon,	spawn,		{.v = (const char*[]){ "mpc", "prev",  NULL } } },

	{ MODKEY,		          XK_apostrophe,	spawn,		{.v = (const char*[]){ "mpc", "next",  NULL } } },

	{ MODKEY,		          XK_equal,	spawn,		{.v = (const char*[]){ "mpc", "volume", "+5",  NULL } } },

	{ MODKEY,		          XK_minus,	spawn,		{.v = (const char*[]){ "mpc", "volume", "-5", NULL } } },

	{ MODKEY,		          XK_z,	spawn,		{.v = (const char*[]){ "mpc", "toggle",  NULL } } },

	{ MODKEY|ShiftMask,	   XK_z,	spawn,		{.v = (const char*[]){ "mpc", "stop",  NULL } } },
  { 0,				XK_Print,	spawn,		SHCMD("maim pic-full-$(date '+%y%m%d-%H%M-%S').png") },
  { ShiftMask,		               XK_Print,	spawn,		{.v = (const char*[]){ "maimpic", NULL } } },
  { MODKEY,		                 	 XK_Print,	spawn,		{.v = (const char*[]){ "dmenurecord", NULL } } },
  { MODKEY,			                 XK_Delete,	spawn,		{.v = (const char*[]){ "dmenurecord", "kill", NULL } } },
{ MODKEY,			                       XK_F1,		spawn,		{.v = (const char*[]){ "displayselect", NULL } } },
{ MODKEY,			                       XK_F2,		spawn,		{.v = (const char*[]){ "mw", "-Y", NULL } } },
{ MODKEY,		                       	 XK_F3,		spawn,		SHCMD("mpv --untimed --no-cache --no-osc --no-input-default-bindings --profile=low-latency --input-conf=/dev/null --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)") },
{ MODKEY,			                        XK_F4,		spawn,		SHCMD("groff -ms /home/chris/media/Documents/keys.ms -Tpdf | zathura -") },
	{ MODKEY|ShiftMask,             XK_b,      togglebar,      {0} },
	{ MODKEY|ShiftMask,             XK_j,      rotatestack,    {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_k,      rotatestack,    {.i = -1 } },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_o,      incnmaster,     {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_o,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
  { MODKEY,                       XK_space, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY,                       XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
  { MODKEY|ShiftMask,             XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_u,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY|ShiftMask,             XK_u,      setlayout,      {.v = &layouts[3]} },
	{ MODKEY,                       XK_i,      setlayout,      {.v = &layouts[4]} },
	{ MODKEY,                       XK_g,      setlayout,      {.v = &layouts[5]} },
	//{ MODKEY,                       XK_space,  setlayout,      {0} },
  { MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_s,      togglesticky,   {0} },
	{ MODKEY,                       XK_f,      togglefullscr,  {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	{ MODKEY|ShiftMask,           	XK_y,      togglescratch,  {.ui = 0 } },
	{ MODKEY|ShiftMask,           	XK_l,	     togglescratch,  {.ui = 1 } },
	{ MODKEY|ShiftMask,            	XK_x,	     togglescratch,  {.ui = 2 } },
  { MODKEY,                       XK_n,      shiftview,      {.i = +1 } },
  { MODKEY,                       XK_b,      shiftview,      {.i = -1 } },

  TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY,                       XK_x,      quit,           {0} },
	{ MODKEY1,                      XK_r,      quit,           {1} }, 

    //{ MODKEY|Mod1Mask,              XK_h,      incrgaps,       {.i = +1 } },
    //{ MODKEY|Mod1Mask,              XK_l,      incrgaps,       {.i = -1 } },
    //{ MODKEY|Mod1Mask|ShiftMask,    XK_h,      incrogaps,      {.i = +1 } },
    //{ MODKEY|Mod1Mask|ShiftMask,    XK_l,      incrogaps,      {.i = -1 } },
    //{ MODKEY|Mod1Mask|ControlMask,  XK_h,      incrigaps,      {.i = +1 } },
    //{ MODKEY|Mod1Mask|ControlMask,  XK_l,      incrigaps,      {.i = -1 } },
    //{ MODKEY|Mod1Mask,              XK_0,      togglegaps,     {0} },
    //{ MODKEY|Mod1Mask|ShiftMask,    XK_0,      defaultgaps,    {0} },
    //{ MODKEY,                       XK_y,      incrihgaps,     {.i = +1 } },
    //{ MODKEY,                       XK_o,      incrihgaps,     {.i = -1 } },
    //{ MODKEY|ControlMask,           XK_y,      incrivgaps,     {.i = +1 } },
    //{ MODKEY|ControlMask,           XK_o,      incrivgaps,     {.i = -1 } },
    //{ MODKEY|Mod1Mask,              XK_y,      incrohgaps,     {.i = +1 } },
    //{ MODKEY|Mod1Mask,              XK_o,      incrohgaps,     {.i = -1 } },
    //{ MODKEY|ShiftMask,             XK_y,      incrovgaps,     {.i = +1 } },
    //{ MODKEY|ShiftMask,             XK_o,      incrovgaps,     {.i = -1 } },

//end_keys
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
  { ClkWinTitle,          0,              Button2,        zoom,           {0} },
    //{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button1,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

