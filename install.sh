# update
sudo -s
apt update
apt upgrade -y

echo "install gnupg"
apt-get install gnupg

echo "add key"
# github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
# vs-code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
# insomnia
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
# mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
# workreave
add-apt-repository ppa:rob-caelers/workrave
# steam
add-apt-repository multiverse
# telegram
add-apt-repository ppa:atareao/telegram


# update
apt-get update


echo "install github cli"
apt install gh

echo "installing fish"
apt install fish -y

echo "make fish default shell"
chsh "${which fish}"


echo "install nodejs"
apt install nodejs npmjs -y

echo "install golang"
apt install golang -y

echo "install rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "use LTS nodejs"
npm i -g n
n lts

echo "install gnome-tweaks"
apt install gnome-tweaks -y

echo "install vscode"
apt install apt-transport-https -y
apt install code -y

echo "installing insomnia"
apt-get install insomnia

echo "installing steam"
apt update
apt install steam -y

echo "install discord"
# install from official deb package not from apt
wget "https://discord.com/api/download?platform=linux&format=deb" -O discord.deb
dpkg -i discord.deb
rm discord.deb

echo "install telegram"
apt install telegram

echo "install mongodb"
apt-get install -y mongodb-org
systemctl start mongod

echo "install chrome"
wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

echo "install workrave"
apt-get install workrave



