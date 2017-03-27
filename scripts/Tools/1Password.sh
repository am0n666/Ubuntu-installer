#!/usr/bin/env bash

echo "Installing 1Password"

wget https://app-updates.agilebits.com/download/OPW4 -O /tmp/1password.exe
wine /tmp/1password.exe

rm /tmp/1password.exe

mkdir -p ~/.local/share/applications/

cat <<EOF > ~/.local/share/applications/1password.desktop
[Desktop Entry]
Name=1Password
Comment=
Exec=wine "$HOME/.wine/drive_c/Program Files (x86)/1Password 4/1Password.exe"
Icon=$HOME/.wine/drive_c/Program Files (x86)/1Password 4/1Password.ico
Terminal=false
Type=Application
Categories=Internet
EOF

mkdir -p ~/.config/autostart/

cat <<EOL | tee ~/.config/autostart/1password_agent.desktop
[Desktop Entry]
Type=Application
Exec=wine "$HOME/.wine/drive_c/Program Files (x86)/1Password 4/Agile1pAgent.exe"
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=1Password Agent
Name=1Password Agent
Comment[en_US]=
Comment=

EOL
