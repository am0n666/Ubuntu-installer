#!/usr/bin/env bash

echo "Installing Base packages"

sudo mkdir -p /etc/apt/sources.list.d/

# Use latest git
sudo add-apt-repository ppa:git-core/ppa -y

sudo apt update
sudo apt install -y htop redshift shutter clipit vim git

# Git settings

sudo chmod +x /usr/share/doc/git/contrib/diff-highlight/diff-highlight
# add to path
cat << 'EOL' | tee -a ~/.zshrc
export PATH=/usr/share/doc/git/contrib/diff-highlight/:$PATH
EOL

# https://github.com/blog/2188-git-2-9-has-been-released
git config --global diff.compactionHeuristic 1
git config --global interactive.diffFilter diff-highlight
git config --global pager.log 'diff-highlight | less'
git config --global pager.show 'diff-highlight | less'
git config --global pager.diff 'diff-highlight | less'

git config --global user.name "Mandy Schoep"


sudo apt-get -y install `check-language-support -l be`
sudo apt-get -y install `check-language-support -l nl`



cat << EOL | sudo tee /etc/default/locale
LANG="en_US.UTF-8"
LANGUAGE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_NUMERIC="nl_BE.UTF-8"
LC_TIME="nl_BE.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_MONETARY="nl_BE.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="nl_BE.UTF-8"
LC_NAME="nl_BE.UTF-8"
LC_ADDRESS="nl_BE.UTF-8"
LC_TELEPHONE="nl_BE.UTF-8"
LC_MEASUREMENT="nl_BE.UTF-8"
LC_IDENTIFICATION="nl_BE.UTF-8"

EOL



## Vim config
if ! grep -q '' ~/.vimrc ; then
    cat << EOL | tee ~/.vimrc
    set nu
    syntax on
EOL
fi








mkdir -p ~/.config/autostart
mkdir -p ~/bin/



cat << EOL | tee ~/.config/autostart/startup.desktop
[Desktop Entry]
Type=Application
Exec=bash /home/$(whoami)/bin/startup.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Startup
Name=Startup
Comment[en_US]=
Comment=

EOL


if ! grep -q '' ~/bin/startup.sh ; then
    cat << EOL | tee ~/bin/startup.sh
#!/usr/bin/env bash

# xrandr --addmode VGA1 1920x1080
# redshift -O 4300 # See below config
# cd ~/Docker/Web71 && docker-compose up -d

EOL
fi

if ! grep -q '' ~/.config/redshift.conf ; then
    cat << 'EOL' | tee ~/.config/redshift.conf
[redshift]
; Set the day and night screen temperatures
temp-day=4100
temp-night=3800

; Enable/Disable a smooth transition between day and night
; 0 will cause a direct change from day to night screen temperature.
; 1 will gradually increase or decrease the screen temperature
transition=1

; Set the screen brightness. Default is 1.0
;brightness=0.9
; It is also possible to use different settings for day and night since version 1.8.
;brightness-day=0.7
;brightness-night=0.4
; Set the screen gamma (for all colors, or each color channel individually)
gamma=0.9

;gamma=0.8:0.7:0.8
; Set the location-provider: 'geoclue', 'gnome-clock', 'manual'
; type 'redshift -l list' to see possible values
; The location provider settings are in a different section.
location-provider=manual

; Set the adjustment-method: 'randr', 'vidmode'
; type 'redshift -m list' to see all possible values
; 'randr' is the preferred method, 'vidmode' is an older API
; but works in some cases when 'randr' does not.
; The adjustment method settings are in a different section.
adjustment-method=randr

; Configuration of the location-provider:
; type 'redshift -l PROVIDER:help' to see the settings
; e.g. 'redshift -l manual:help'
[manual]
lat=43
lon=1

; Configuration of the adjustment-method
; type 'redshift -m METHOD:help' to see the settings
; ex: 'redshift -m randr:help'
; In this example, randr is configured to adjust screen 1.
; Note that the numbering starts from 0, so this is actually the second screen.
; [randr]
; screen=0
EOL
fi


cat << EOL | tee ~/.config/autostart/redshift.desktop
[Desktop Entry]
Type=Application
Exec=redshift
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Redshift
Name=Redshift
Comment[en_US]=
Comment=

EOL
