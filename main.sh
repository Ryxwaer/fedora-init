sudo dnf update

sh packages.sh

# Set Console profile
dconf load /org/gnome/Ptyxis/ < ./files/dconf/ptyxis-settings.dconf

# Extensions
tar -xzvf ./files/gnome-extensions-user.tar.gz -C ~/.local/share/gnome-shell/extensions
dconf load /org/gnome/shell/extensions/ < ./files/dconf/gnome-extensions-settings.dconf
dconf list /org/gnome/shell/extensions/

# Logitech Mouse mapping
sudo cp ./files/udev/70-mouse-remap.hwdb /etc/udev/hwdb.d/70-mouse-remap.hwdb
sudo systemd-hwdb update
sudo udevadm control --reload-rules
sudo udevadm trigger

# Git setup
git config --global user.email "ryxwaer@gmail.com"
git config --global user.name "Ryxwaer"

# Login shell to fish
chsh -s /bin/fish

# Switch layout by Alt+Shift
dconf write /org/gnome/desktop/wm/keybindings/switch-input-source "['<Alt>Shift_L']"
