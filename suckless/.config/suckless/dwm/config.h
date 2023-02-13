
/* See LICENSE file for copyright and license details. */

/* Constants */
#define TERMINAL "alacritty"
#define TERMCLASS "Alacritty"
#define BROWSER "firefox-bin"

/* appearance */
static const unsigned int borderpx  = 4;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static const unsigned int gappih    = 10;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 10;       /* vert inner gap between windows */
static const unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 10;       /* vert outer gap between windows and screen edge */
static const int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static const int showbar            = 1;        /* 0 means no bar */
static const int user_bh            = 7;        /* 2 is the default spacing around the bar's font */
static const int topbar             = 1;        /* 0 means bottom bar */
static const int horizpadbar        = 4;        /* horizontal padding for statusbar */
static const int vertpadbar         = 0;        /* vertical padding for statusbar */
static const int vertpad            = 11;       /* vertical padding of bar */
static const int sidepad            = 0;       /* horizontal padding of bar */
static const char *fonts[]          = 
{  
 // "Iosevka:style=medium:size=9:antialias=true:autohint=true"
 // "Fira Code Mono:style=Bold:size=8.5:antialias=true:autohint=true",
 "Jetbrains Mono:style=bold:size=8:antialias=true:autohint=true",
 "Font Awesome 6 Free Solid:pixelsize=14",
 "Font Awesome 6 Brands:pixelsize=14",
"Material Design Icons Desktop:size=14",
 // "Fira Code Nerd Font:style=Bold:size=11:antialias=true:autohint=true"
"NotoColorEmoji:pixelsize=18:antialias=true:autohint=true"




};

 static const char dmenufont[]       = "Jetbrains Mono:style=Bold:size=8:antialias=true:autohint=true";
 // static const char dmenufont[]       = "Fira Code Mono:style=Bold:size=9:antialias=true:autohint=true";

// #include "themes/dracula.h"
// #include "themes/tokyonight.h"
#include "themes/tokyonight-purple.h"
//#include "themes/onedark.h"
// #include "themes/catppuccin.h"
//#include "themes/nord.h"
//include "themes/gruvbox.h"
//#include "themes/gruvboxred.h"
// #include "themes/doomone.h"

static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_gray1, col_cyan  },
	[SchemeTitle]  = { col_gray1, col_cyan,  col_cyan  },
  [SchemeLayout]     = { green,   col_gray1,  col_gray1 },
};

typedef struct {
 const char *name;
 const void *cmd;
} Sp;

const char *spcmd1[] = {"st", "-n", "sppulse", "-g", "70x20", "-e", "pulsemixer", NULL };
const char *spcmd2[] = {"st", "-n", "spfm", "-g", "60x20", "-e", "notes",  NULL };
const char *spcmd3[] = {"st", "-n", "spbmks", "-g", "80x25", "-e", "bmks", NULL };
const char *spcmd4[] = {"st", "-n", "spwiki", "-g", "90x25", "-e", "wikiman", "-s", "gentoo", NULL };
const char *spcmd5[] = {"alacritty", "--class", "spnews", "--config-file", "/home/chris/.config/alacritty/newsboat.yml", "-e", "newsboat", NULL };
const char *spcmd6[] = {"alacritty", "--class", "spterm", "--config-file", "/home/chris/.config/alacritty/scratch.yml",  NULL };
// const char *spcmd3[] = {"keepassxc", NULL };
static Sp scratchpads[] = {
    /* name          cmd  */
   {"sppulse",      spcmd1},
   {"spfm",        spcmd2},
   {"spbmks",   spcmd3},
   {"spwiki",   spcmd4},
   {"spnews",   spcmd5},
   {"spterm",   spcmd6},
};


/* tagging */
// static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
static const char *tags[] = { "", "", "", "", "", "", "", "", "" };
static const char *tagsalt[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
static const int momentaryalttags = 0; /* 1 means alttags will show only when key is held down*/

static const unsigned int ulinepad	= 5;	/* horizontal padding between the underline and tag */
static const unsigned int ulinestroke	= 2;	/* thickness / height of the underline */
static const unsigned int ulinevoffset	= 0;	/* how far above the bottom of the bar the line should appear */
static const int ulineall 		= 0;	/* 1 to show underline on all tags, 0 for just the active ones */

static const char *tagsel[][2] = {
	{ "#bb9af7", "#24283b" },
	{ "#f7768e", "#24283b" },
	{ "#e0af68", "#24283b" },
	{ "#93ce6a", "#24283b" },
	{ "#7aa2f7", "#24283b" },
	{ "#7dcfff", "#24283b" },
	{ "#c0caf5", "#24283b" },
	{ "#bb9af7", "#24283b" },
	{ "#d5d6db", "#24283b" },
};

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title            tags mask  isfloating  isterminal  noswallow  monitor */
	{ "Gimp",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	{ "Pam_gnupg",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	{ "Tor Browser",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	{ "ffplay",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	{ "Yad",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	{ "St",       NULL,       NULL,            0,         0,          1,           0,        -1 },
	{ "Alacritty",       NULL,       NULL,            0,         0,          1,           0,        -1 },
    { "trayer",   NULL,         NULL,       1 << 8,       False },
    { "firefox",   NULL,         NULL,       1 << 2,       False },
    // { "tremc",   NULL,         NULL,       1 << 8,       False },
	{ NULL,       NULL,       "Event Tester",  0,         0,          0,           1,        -1 }, /* xev */
    { NULL,       "sppulse",     NULL,       SPTAG(0),       1,           -1 },
    { NULL,       "spfm",       NULL,       SPTAG(1),       1,           -1 },
    { NULL,       "spbmks",  NULL,       SPTAG(2),       1,           -1 },
    { NULL,       "spwiki",  NULL,       SPTAG(3),       1,           -1 },
    { NULL,       "spnews",  NULL,       SPTAG(4),       1,           -1 },
    { NULL,       "spterm",  NULL,       SPTAG(5),       1,           -1 },

};

// static const char systray_app_class[] = "trayer";

/* layout(s) */
static const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1; /* 1 will force focus on the fullscreen window */

#include "layouts.c"
static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[ ] =",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
	// { "|M|",      centeredmaster },
	// { ">M>",      centeredfloatingmaster },
	// { "HHH",      grid },
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

#include <X11/XF86keysym.h>
static Key keys[] = {
  /* modifier                     key        function        argument */
  { MODKEY,                       XK_d,      spawn,          {.v = dmenucmd } },
  { MODKEY|ShiftMask,		          XK_d,		spawn,		         {.v = (const char*[]){ "rofi", "-show","drun", "-show-icons", NULL } } },
  { MODKEY,		                    XK_c,		spawn,		         SHCMD("clipmenu -i -h 4 -fn Jetbrains:size=9 -nb '#24283b' -nf '#efefef' -sb '#bd9af7' -sf '#24283b'") },
	{ MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY1,                      XK_Return, spawn,          SHCMD("tabbed -r 2 alacritty --embed ''")  },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = (const char*[]){ "alacritty", "--config-file", "/home/chris/.config/alacritty/tmux.yml", "-e", "tmux", "new-session", "-s", "term", NULL } } },
  { MODKEY,		                   	XK_BackSpace,	spawn,	     {.v = (const char*[]){ "sysact", NULL } } },
  { MODKEY|ShiftMask,		          XK_BackSpace,	spawn,	     SHCMD("i3lock -C -i /home/chris/.local/bin/2770299.png")  },
  { MODKEY,		          	        XK_w,		spawn,             {.v = (const char*[]){ BROWSER, NULL } } },
  { MODKEY|ShiftMask,			        XK_w,		spawn,		         SHCMD("zettle-ema")  },
  { MODKEY,		          	        XK_e,		spawn,		         SHCMD("st  -e neomutt ; rmdir ~/.abook") },
  { MODKEY,		          	        XK_r,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "lfub", NULL } } },
  { MODKEY|ShiftMask,			        XK_r,		spawn,		         SHCMD("alacritty -e openpdf") },
  { MODKEY,		                    XK_p,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "htop", NULL } } },
  { MODKEY,		          	        XK_a,		spawn,		         SHCMD(" st -e abook -C ~/.config/abook/abookrc --datafile ~/.config/abook/addressbook") },
  { MODKEY,		                   XK_m,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "ncmpcpp", NULL } } },
  { MODKEY|ShiftMask,		         XK_t,		spawn,		         SHCMD("tray.sh") },

  { MODKEY,		                 	 XK_bracketleft,		spawn,	 {.v = (const char*[]){ "mpc", "seek", "-10", NULL } } },
	{ MODKEY|ShiftMask,	         	 XK_bracketleft,		spawn, 	 {.v = (const char*[]){ "mpc", "seek", "-60", NULL } } },
	{ MODKEY,		                   XK_bracketright,	spawn,	   {.v = (const char*[]){ "mpc", "seek", "+10", NULL } } },
	{ MODKEY|ShiftMask,		         XK_bracketright,	spawn,	   {.v = (const char*[]){ "mpc", "seek", "+60", NULL } } },
	{ MODKEY,		                   XK_semicolon,	spawn,		{.v = (const char*[]){ "mpc", "prev",  NULL } } },
	{ MODKEY,		                   XK_apostrophe,	spawn,		{.v = (const char*[]){ "mpc", "next",  NULL } } },
	{ MODKEY,		                   XK_equal,	spawn,		    {.v = (const char*[]){ "mpc", "volume", "+5",  NULL } } },
	{ MODKEY,		                   XK_minus,	spawn,		    {.v = (const char*[]){ "mpc", "volume", "-5", NULL } } },
	{ MODKEY,		                   XK_z,	spawn,		        {.v = (const char*[]){ "mpc", "toggle",  NULL } } },
	{ MODKEY|ShiftMask,	           XK_z,	spawn,		        {.v = (const char*[]){ "mpc", "stop",  NULL } } },
  { 0,			                     XK_Print,	spawn,		    SHCMD("maim pic-full-$(date '+%y%m%d-%H%M-%S').png") },
  { ShiftMask,		               XK_Print,	spawn,		    {.v = (const char*[]){ "maimpic", NULL } } },
  { MODKEY,		                 	 XK_Print,	spawn,		    {.v = (const char*[]){ "dmenurecord", NULL } } },
  { MODKEY,			                 XK_Delete,	spawn,		    {.v = (const char*[]){ "dmenurecord", "kill", NULL } } },
  { MODKEY,			                       XK_F1,		spawn,		  {.v = (const char*[]){ "displayselect", NULL } } },
  { MODKEY,			                       XK_F2,		spawn,		  {.v = (const char*[]){ "mw", "-Y", NULL } } },
  { MODKEY,		                       	 XK_F3,		spawn,		SHCMD("mpv --untimed --no-cache --no-osc --no-input-default-bindings --profile=low-latency --input-conf=/dev/null --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)") },
  { MODKEY,			                        XK_F4,		spawn,		SHCMD("groff -ms /home/chris/docs/ms/keys.ms -Tpdf | zathura -") },
  { MODKEY,			                  XK_F5,		 spawn,		      SHCMD("torwrap") },
  { MODKEY,			                  XK_F6,		 spawn,		      SHCMD("td-toggle") },
  // { MODKEY,			XK_F11,		spawn,		SHCMD("mpv --untimed --no-cache --no-osc --no-input-default-bindings --profile=low-latency --input-conf=/dev/null --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)") },
  { MODKEY,			                  XK_F12,		 spawn,		      SHCMD("remaps") },
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
	// { MODKEY|ShiftMask,             XK_u,      setlayout,      {.v = &layouts[3]} },
	// { MODKEY,                       XK_i,      setlayout,      {.v = &layouts[4]} },
	// { MODKEY,                       XK_g,      setlayout,      {.v = &layouts[5]} },
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
	{ MODKEY1,                      XK_n,      togglealttag,   {0} },
	{ MODKEY|ShiftMask,           	XK_y,      togglescratch,  {.ui = 0 } },
	{ MODKEY|ShiftMask,           	XK_n,	     togglescratch,  {.ui = 1 } },
	{ MODKEY|ShiftMask,            	XK_m,	     togglescratch,  {.ui = 2 } },
	{ MODKEY|ShiftMask,            	XK_a,	     togglescratch,  {.ui = 3 } },
	{ MODKEY|ShiftMask,            	XK_e,	     togglescratch,  {.ui = 4 } },
	{ MODKEY,                      	XK_y,	     togglescratch,  {.ui = 5 } },
	{ MODKEY,                       XK_n,      shiftviewclients, { .i = +1 } },
	{ MODKEY,                       XK_b,      shiftviewclients, { .i = -1 } },

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

};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY|ShiftMask,         Button1,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

