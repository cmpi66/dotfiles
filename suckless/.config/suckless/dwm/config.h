/* See LICENSE file for copyright and license details. */

/* Constants */
#define TERMINAL "alacritty"
#define TERMCLASS "Alacritty"
#define BROWSER "librewolf"

/* appearance */
static const unsigned int borderpx  = 3;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int swallowfloating    = 0;        /* 1 means swallow floating windows by default */
static const unsigned int gappih    = 10;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 10;       /* vert inner gap between windows */
static const unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 10;       /* vert outer gap between windows and screen edge */
static const int user_bh            = 2;        /* 2 is the default spacing around the bar's font */
static const int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const int horizpadbar        = 4;        /* horizontal padding for statusbar */
static const int vertpadbar         = 0;        /* vertical padding for statusbar */
static const int vertpad            = 4;       /* vertical padding of bar */
static const int sidepad            = 0;       /* horizontal padding of bar */
static const char *fonts[]          = 
{  
 // "Jetbrains Mono:style=Bold:size=13:antialias=true:autohint=true",
 // "JetBrainsMono Nerd Font:style=Bold:size=12:antialias=true:autohint=true"
 // "Fira Code Mono:style=Bold:size=9:antialias=true:autohint=true",
 "Fira Code Mono:style=Bold:size=7.5:antialias=true:autohint=true",
 "Font Awesome 6 Free Solid:pixelsize=11",
 "Font Awesome 6 Brands:pixelsize=11",
 "Material Design Icons:pixelsize=11",
 // "Fira Code Nerd Font:style=Bold:size=11:antialias=true:autohint=true"
"NotoColorEmoji:pixelsize=14:antialias=true:autohint=true"




};

 static const char dmenufont[]       = "Jetbrains Mono:style=Bold:size=7.5:antialias=true:autohint=true";
 // static const char dmenufont[]       = "Fira Code Mono:style=Bold:size=9:antialias=true:autohint=true";

// #include "themes/dracula.h"
//#include "themes/tokyonight.h"
//#include "themes/onedark.h"
#include "themes/catppuccin.h"
//#include "themes/nord.h"
//include "themes/gruvbox.h"
//#include "themes/gruvboxred.h"
// #include "themes/doomone.h"
//
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { gray3, black, black },
	[SchemeSel]  = { blue, black, blue  },
	[SchemeTitle]  = { black, blue,  blue  },
  [SchemeLayout]     = { green,   black,  black },
};

typedef struct {
 const char *name;
 const void *cmd;
} Sp;

const char *spcmd1[] = {"alacritty", "--class", "sppulse", "--config-file", "/home/chris/.config/alacritty/scratch3.yml","-e", "pulsemixer", NULL };
const char *spcmd2[] = {"st", "-n", "spfm", "-g", "60x20", "-e", "notes",  NULL };
const char *spcmd3[] = {"st", "-n", "spbmks", "-g", "80x25", "-e", "bmks", NULL };
const char *spcmd4[] = {"st", "-n", "spwiki", "-g", "90x25", "-e", "dmenuwiki", NULL };
const char *spcmd5[] = {"alacritty", "--class", "spnews", "--config-file", "/home/chris/.config/alacritty/newsboat.yml", "-e", "newsboat", NULL };
const char *spcmd6[] = {"alacritty", "--class", "spterm", "--config-file", "/home/chris/.config/alacritty/scratch.yml",  NULL };
const char *spcmd7[] = {"keepassxc", NULL };
static Sp scratchpads[] = {
    /* name          cmd  */
   {"sppulse",      spcmd1},
   {"spfm",        spcmd2},
   {"spbmks",   spcmd3},
   {"spwiki",   spcmd4},
   {"spnews",   spcmd5},
   {"spterm",   spcmd6},
   {"keepassxc",   spcmd7},
};


/* tagging */
// static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };

static const char *tags[] = { "", "", "", "", "", "", "", "", "" };
static const char *tagsalt[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
static const int momentaryalttags = 0; /* 1 means alttags will show only when key is held down*/
// static const char *tags[] = { " 1", " 2", " 3", " 4", " 5", " 6", " 7", " 8", " 9" };

static const unsigned int ulinepad	= 5;	/* horizontal padding between the underline and tag */
static const unsigned int ulinestroke	= 2;	/* thickness / height of the underline */
static const unsigned int ulinevoffset	= 0;	/* how far above the bottom of the bar the line should appear */
static const int ulineall 		= 0;	/* 1 to show underline on all tags, 0 for just the active ones */

static const char *tagsel[][2] = {
	{ mauve, black },
	{ red, black },
	{ maroon, black },
	{ green, black },
	{ yellow, black },
	{ blue, black },
	{ pink, black },
	{ rosewater, black },
	{ white, black },
};

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */

	/* class      instance    title            tags mask  isfloating  isterminal  noswallow  monitor */
	{ "Gimp",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	{ "Tor Browser",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	// { "keepassxc",     "KeePassXC",       NULL,            0,         1,          0,           0,        -1 },
	{ "Pam_gnupg",     NULL,       NULL,            0,         1,          0,           0,        -1 },
	{ "pinentry-gtk-2",     "Pinentry-gtk-2",       NULL,            0,         1,          0,           0,        -1 },
    { "trayer",   NULL,         NULL,       1 << 8,       False },
    { "firefox",   NULL,         NULL,       1 << 2,       False },
    { "LibreWolf",   NULL,         NULL,       1 << 2,       False },
	{ "St",       NULL,       NULL,            0,         0,          1,           0,        -1 },
	{ "Alacritty",NULL,       NULL,            0,         0,          1,           0,        -1 },
    { "discord",   NULL,         NULL,       1 << 4,       False },
	{ "Pcmanfm",     NULL,       NULL,            0,         1,          0,           0,        -1 },
    { NULL,   NULL,         "zathura",       1 << 1,    0,           1,             0,       False },
    { NULL,   NULL,         "okular",       1 << 1,    0,           1,             0,       False },
    { "ema",   "ema",         NULL,       1 << 3,    0,           1,             0,       False },
    { NULL,   NULL,         "tremc",       1 << 8,       False },
    { NULL,   NULL,         "stig",       1 << 8,       False },
    { NULL,   NULL,         "neomutt",       1 << 5,       False },
    { NULL,   NULL,         "openpdf",       1 << 1,    0,          1,          0,       False },
    { NULL,   NULL,         "lfub",       1 << 7,       False },
	{ NULL,       NULL,       "Event Tester",  0,         0,          0,           1,        -1 }, /* xev */
    { NULL,       "sppulse",     NULL,       SPTAG(0),       1,           -1 },
    { NULL,       "spfm",       NULL,       SPTAG(1),       1,           -1 },
    { NULL,       "spbmks",  NULL,       SPTAG(2),       1,           -1 },
    { NULL,       "spwiki",  NULL,       SPTAG(3),       1,           -1 },
    { NULL,       "spnews",  NULL,       SPTAG(4),       1,           -1 },
    { NULL,       "spterm",  NULL,       SPTAG(5),       1,           -1 },
    { NULL,       "keepassxc",  NULL,       SPTAG(6),       1,           -1 },
};

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
static const char *dmenucmd[] = { "dmenu_run","-i","-p", dmenumon, "-fn", dmenufont, "-nb", black, "-nf", gray3, "-sb", blue, "-sf", black, NULL };
static const char *brdowncmd[] = { "brightnessctl", "set", "5%-", NULL };
static const char *brupcmd[] = { "brightnessctl", "set", "5%+", NULL };

#include <X11/XF86keysym.h>
static Key keys[] = {
//start_keys
  /* modifier                     key        function        argument */
 { 0, XF86XK_MonBrightnessUp,   spawn,                       {.v = brupcmd} },
 { 0, XF86XK_MonBrightnessDown, spawn,                       {.v = brdowncmd} },
  { MODKEY,                       XK_d,      spawn,          {.v = dmenucmd } },

  { MODKEY|ShiftMask,		          XK_d,		spawn,		         {.v = (const char*[]){ "rofi", "-show","drun", "-show-icons", NULL } } },

  { MODKEY,		                    XK_c,		spawn,		         SHCMD("clipmenu -i -h 4 -fn Jetbrains:size=9 -nb '#161320' -nf '#efefef' -sb '#89b4fa' -sf '#161320'") },
  { MODKEY|ShiftMask,		          XK_c,		spawn,		         {.v = (const char*[]){ "rofi", "-show","calc", "-no-show-match", "-no-sort", NULL } } },
  
	{ MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = (const char*[]){ "alacritty", "--config-file", "/home/chris/.config/alacritty/tmux.yml", "-e", "t", NULL } } },
{ MODKEY,		                     	XK_BackSpace,	spawn,	    {.v = (const char*[]){ "sysact", NULL } } },
{ MODKEY|ShiftMask,		            XK_BackSpace,	spawn,	   SHCMD("i3lock -C -i /home/chris/.local/bin/arch-wallpaper.jpg")  },
  { MODKEY,		          	        XK_w,		spawn,            {.v = (const char*[]){ BROWSER, NULL } } },
  { MODKEY|ShiftMask,			        XK_w,		spawn,		        SHCMD("zettle-ema")  },
  { MODKEY,		          	        XK_e,		spawn,		         {.v = (const char*[]){ "st", "-t", "neomutt", "-e", "neomutt", NULL } } },
  { MODKEY,		          	        XK_r,		spawn,		         {.v = (const char*[]){ TERMINAL, "-t", "lfub", "-e", "lfub", NULL } } },
  { MODKEY|ShiftMask,			        XK_r,		spawn,		         SHCMD("openpdf") },
  { MODKEY,		                    XK_n,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "htop", NULL } } },
  { MODKEY,		          	        XK_a,		spawn,		         {.v = (const char*[]){ "st", "-e", "abook", NULL } } },
  { MODKEY,		                   XK_m,		spawn,		         {.v = (const char*[]){ TERMINAL, "-e", "ncmpcpp", NULL } } },
  { MODKEY|ShiftMask,			        XK_t,		spawn,		         SHCMD("tray.sh") },
 { MODKEY,		                   	XK_bracketleft,		spawn,		{.v = (const char*[]){ "mpc", "seek", "-10", NULL } } },
	{ MODKEY|ShiftMask,	           	XK_bracketleft,		spawn,		{.v = (const char*[]){ "mpc", "seek", "-60", NULL } } },
	{ MODKEY,		                   	XK_bracketright,	spawn,		{.v = (const char*[]){ "mpc", "seek", "+10", NULL } } },
	{ MODKEY|ShiftMask,		          XK_bracketright,	spawn,		{.v = (const char*[]){ "mpc", "seek", "+60", NULL } } },

	{ MODKEY,		          XK_comma,	spawn,		{.v = (const char*[]){ "mpc", "prev",  NULL } } },

	{ MODKEY,		          XK_period,	spawn,		{.v = (const char*[]){ "mpc", "next",  NULL } } },

	{ MODKEY,		          XK_equal,	spawn,		{.v = (const char*[]){ "mpc", "volume", "+5",  NULL } } },

	{ MODKEY,		          XK_minus,	spawn,		{.v = (const char*[]){ "mpc", "volume", "-5", NULL } } },

	{ MODKEY,		          XK_p,	spawn,		{.v = (const char*[]){ "mpc", "toggle",  NULL } } },

	{ MODKEY|ShiftMask,	   XK_p,	spawn,		SHCMD("mpc pause; pauseallmpv") },
  { 0,				XK_Print,	spawn,		SHCMD("maim pic-full-$(date '+%y%m%d-%H%M-%S').png") },
  { ShiftMask,		               XK_Print,	spawn,		{.v = (const char*[]){ "maimpic", NULL } } },
  { MODKEY,		                 	 XK_Print,	spawn,		{.v = (const char*[]){ "dmenurecord", NULL } } },
  { MODKEY,			                 XK_Delete,	spawn,		{.v = (const char*[]){ "dmenurecord", "kill", NULL } } },
{ MODKEY,			                       XK_F1,		spawn,		{.v = (const char*[]){ "displayselect", NULL } } },
{ MODKEY,			                       XK_F2,		spawn,		{.v = (const char*[]){ "mw", "-Y", NULL } } },
{ MODKEY,		                       	 XK_F3,		spawn,		SHCMD("mpv --untimed --no-cache --no-osc --no-input-default-bindings --profile=low-latency --input-conf=/dev/null --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)") },
{ MODKEY,			                        XK_F4,		spawn,		SHCMD("groff -ms /home/chris/docs/ms/keys.ms -Tpdf | zathura -") },
  { MODKEY,			                  XK_F5,		 spawn,		      SHCMD("torwrap") },
  { MODKEY,			                  XK_F6,		 spawn,		      SHCMD("td-toggle") },
  { MODKEY,			XK_F11,		spawn,		SHCMD("mpv --untimed --no-cache --no-osc --no-input-default-bindings --profile=low-latency --input-conf=/dev/null --title=webcam $(ls /dev/video[0,2,4,6,8] | tail -n 1)") },
  { MODKEY,			                  XK_F7,		 spawn,		      SHCMD("dm-confedit") },
  { MODKEY,			                  XK_F8,		 spawn,		      SHCMD("attachzettle") },
  { MODKEY,			                  XK_F9,		 spawn,		      SHCMD("dmenumount") },
  { MODKEY,			                  XK_F10,		 spawn,		      SHCMD("dmenuunmount") },
  // { MODKEY,			                  XK_F7,		 spawn,		      SHCMD("jaybird") },
  { MODKEY,			                  XK_F12,		 spawn,		      SHCMD("remaps") },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
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
	{ MODKEY,                       XK_Left,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_Right, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_Left,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_Right, tagmon,         {.i = +1 } },
	{ MODKEY|ShiftMask,           	XK_y,      togglescratch,  {.ui = 0 } },
	{ MODKEY|ShiftMask,           	XK_n,	     togglescratch,  {.ui = 1 } },
	{ MODKEY|ShiftMask,            	XK_m,	     togglescratch,  {.ui = 2 } },
	{ MODKEY|ShiftMask,            	XK_a,	     togglescratch,  {.ui = 3 } },
	{ MODKEY|ShiftMask,            	XK_e,	     togglescratch,  {.ui = 4 } },
	{ MODKEY,                      	XK_y,	     togglescratch,  {.ui = 5 } },
	{ MODKEY|ShiftMask,                      	XK_l,	     togglescratch,  {.ui = 6 } },
	{ MODKEY,             XK_semicolon,       shiftviewclients, { .i = +1 } },
	{ MODKEY,             XK_g, shiftviewclients, { .i = -1 } },
	{ MODKEY1,                       XK_n,      togglealttag,   {0} },

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
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY|ShiftMask,         Button1,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

