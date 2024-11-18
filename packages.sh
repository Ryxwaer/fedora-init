# VS Code
sudo mkdir $HOME/.config/Code/
sudo cp ./files/Code/User/ $HOME/.config/Code/User/ -r
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

sudo dnf install code

# Neofetch alternative
sudo cp ./files/neofetch/ $HOME/.config/neofetch/ -r
sudo dnf install fastfetch

# flameshot
sudo dnf install flameshot

# Fish shell
sudo cp ./files/fish/ $HOME/.config/fish/ -r
sudo dnf install fish
