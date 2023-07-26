#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y

sudo apt install curl -y

#install nvim
cd
sudo apt-get install ninja-build gettext cmake unzip curl -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

cd ~/Descargas
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip

mkdir ~/.local/share/fonts
mv FiraCode.zip ~/.local/share/fonts
cd ~/.local/share/fonts
unzip FiraCode.zip

fc-cache -fv
rm FiraCode.zip

sudo sed -i "s/FiraCodeNerdFont-Light.ttf/FiraCodeNerdFont-Light.ttf/" /etc/default/console-setup
cd
sudo apt install neofetch -y
sudo apt install python3-venv -y

cd ~/Descargas
wget https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sleep 3
sudo dpkg -i ripgrep_13.0.0_amd64.deb	

#install astrovim
mv ~/.config/nvim ~/.config/nvim.bak

mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

mkdir ~/.config/nvim/lua/user
git clone https://github.com/AstroNvim/user_example.git ~/.config/nvim/lua/user


sudo echo "alias vim=nvim" >> .zshrc
source .zshrc
cd

#Install docker-ce
printf '%s\n' "deb https://download.docker.com/linux/debian bullseye stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list

curl -fsSl https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-ce-archive.gpg

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update
sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  "$(. /etc/os-release && echo "bullseye")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin


#update the groups
sudo groupadd docker
sudo usermod -aG docker $(whoami)







