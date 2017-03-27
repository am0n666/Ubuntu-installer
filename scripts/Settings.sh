#!/usr/bin/env bash

echo "Setting default settings"

# disable overlay scrollbars
gsettings set com.canonical.desktop.interface scrollbar-mode normal
# set launcher to bottom
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
# disable integrated menus
gsettings set com.canonical.Unity integrated-menus false
# set theme
gsettings set org.gnome.desktop.interface gtk-theme 'Flatabulous-master'
gsettings set org.gnome.desktop.interface icon-theme 'Ultra-Flat'

gsettings set org.gnome.desktop.interface toolbar-icons-size 'large'
# no sticky edges
dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse false

gsettings set com.canonical.Unity always-show-menus true
gsettings set org.gnome.desktop.interface font-name 'Ubuntu 11'
gsettings set org.gnome.desktop.interface text-scaling-factor 1

# gedit
gsettings set org.gnome.gedit.preferences.editor scheme 'solarized-dark'

# terminal
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

# desktop
gsettings set org.gnome.desktop.interface enable-animations false



# dash scopes
# gsettings set com.canonical.Unity.Dash favorite-scopes "['scope://clickscope', 'scope://musicaggregator', 'scope://videoaggregator']"
gsettings set com.canonical.Unity.Dash scopes "['home.scope', 'applications.scope', 'files.scope']"


# Compiz

# Todo
# org.compiz existing-profiles ['Default', 'unity']
# org.compiz current-profile 'unity'

##################################################
# dconf

dconf write /org/compiz/profiles/unity/plugins/unityshell/background-color "'#000000ff'"
dconf write /org/compiz/profiles/unity/plugins/unityshell/icon-size "32"


dconf write /org/compiz/profiles/unity/plugins/core/active-plugins "['core', 'composite', 'opengl', 'compiztoolbox', 'grid', 'mousepoll', 'imgpng', 'move', 'vpswitch', 'snap', 'copytex', 'wall', 'regex', 'place', 'commands', 'resize', 'unitymtgrabhandles', 'expo', 'session', 'workarounds', 'fade', 'ezoom', 'scale', 'unityshell']"


dconf write /org/gnome/desktop/wm/preferences/theme "'Flatabulous-master'"


dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-hide-mode "0"
dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-opacity "1.0"


dconf write /com/canonical/unity/launcher/favorites "['application://org.gnome.Nautilus.desktop', 'application://google-chrome.desktop', 'application://thunderbird.desktop', 'application://jetbrains-phpstorm.desktop', 'application://atom.desktop', 'application://gnome-terminal.desktop']"



dconf write /com/canonical/indicator/datetime/show-date "true"
dconf write /com/canonical/indicator/datetime/show-day "true"

dconf write /com/canonical/indicator/datetime/show-week-numbers "true"
dconf write /com/canonical/indicator/datetime/time-format "'24-hour'"
dconf write /com/canonical/indicator/datetime/timezone-name "'Europe/Brussels'"

# dconf write /org/gnome/desktop/interface/text-scaling-factor "0.875"


# Terminal
dconf write /org/gnome/terminal/legacy/profiles:/default "'b1dcc9dd-5262-4d8d-a863-c897e6d979b9'"
dconf write /org/gnome/terminal/legacy/profiles:/list "['b1dcc9dd-5262-4d8d-a863-c897e6d979b9']"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-color "'rgb(0,0,0)'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-colors false
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/palette "['rgb(7,54,66)', 'rgb(220,50,47)', 'rgb(133,153,0)', 'rgb(181,137,0)', 'rgb(38,139,210)', 'rgb(211,54,130)', 'rgb(42,161,152)', 'rgb(238,232,213)', 'rgb(0,43,54)', 'rgb(203,75,22)', 'rgb(88,110,117)', 'rgb(101,123,131)', 'rgb(131,148,150)', 'rgb(108,113,196)', 'rgb(147,161,161)', 'rgb(253,246,227)']"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-transparency false
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/foreground-color "'rgb(255,255,255)'"
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-system-font false
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/font "'Source Code Pro 12'"



###################################################
