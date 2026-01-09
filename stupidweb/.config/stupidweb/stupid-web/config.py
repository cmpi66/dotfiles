import catppuccin

# load your autoconfig, use this, if the rest of your config is empty!
config.load_autoconfig()

# last argument (optional, default is False): enable the plain look for the menu rows
catppuccin.setup(c, 'macchiato', True)

# fonts
c.fonts.default_family = []
c.fonts.default_size = '12pt'
c.fonts.web.family.fixed = 'monospace'
c.fonts.web.family.sans_serif = 'monospace'
c.fonts.web.family.serif = 'monospace'
c.fonts.web.family.standard = 'monospace'

# INTERFACE
c.tabs.show = "switching"
# c.tabs.show = "multiple"
c.tabs.position = "top"
# c.tabs.favicons.show = "never"
# c.statusbar.show = "in-mode"
c.completion.shrink = True
# pfblocker  third party certs error supppresion
c.content.tls.certificate_errors = 'ask-block-thirdparty'

# GENERAL
c.downloads.location.directory = '~/dl'
c.editor.command = ["nvim", "{}"]
c.url.default_page = "about:blank"
c.url.start_pages = ["about:blank"]

c.url.searchengines = {
        'DEFAULT': 'https://search.brave.com/search?q={}',
        ',aw': 'https://wiki.archlinux.org/?search={}',
        ',apkg': 'https://archlinux.org/packages/?sort=&q={}&maintainer=&flagged=',
        ',gh': 'https://github.com/search?o=desc&q={}&s=stars',
        ',yt': 'https://www.youtube.com/results?search_query={}',
        }

c.completion.open_categories = ['searchengines', 'quickmarks', 'bookmarks', 'history', 'filesystem']


c.messages.timeout = 5000


config.set("fileselect.handler", "external")
config.set("fileselect.single_file.command",
    ["kitty", "--class", "yazi-qute", "yazi", "--chooser-file", "{}"])
config.set("fileselect.multiple_files.command",
    ["kitty", "--class", "yazi-qute", "yazi", "--chooser-file", "{}"])


config.bind('J', 'back')
config.bind('K', 'forward')
config.bind('H', 'tab-prev')
config.bind('L', 'tab-next')
config.bind('D', 'undo')
config.bind('=', 'zoom-in')
config.bind('+', 'zoom')
config.bind('<space>b', 'config-cycle statusbar.show always never')
config.bind('<space>t', 'config-cycle tabs.show always never')
config.bind('<space>x', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
config.bind('m', 'spawn kitty yt-dlp {url}')
config.bind('M', 'hint links spawn kitty yt-dlp {hint-url}')
# config.bind('M', 'hint links spawn mpv {hint-url}')


# save session when it closed
c.auto_save.session = True


# Block known trackers globally
for tracker in ["*.doubleclick.net", "*.facebook.com", "*.google-analytics.com"]:
    config.set("content.cookies.accept", "never", f"https://{tracker}/*")


c.aliases = {'q': 'quit', 'w': 'session-save', 'wq': 'quit --save'}

# config.bind('xk>', 'spawn --userscript qute-keepassxc --key FB1A5452C181A3F5 ', mode='insert')
# config.bind('xs', 'spawn --userscript qute-keepassxc --key FB1A5452C181A3F5', mode='normal')

# Autofill full login: username + tab + password
config.bind('<space>k', 'spawn --userscript qute-pass --username-target secret --username-pattern "login: (.+)"')

# Username only
config.bind('<space>j', 'spawn --userscript qute-pass --username-only --username-target secret --username-pattern "login: (.+)"')

# Password only
config.bind('<space>s', 'spawn --userscript qute-pass --password-only')

