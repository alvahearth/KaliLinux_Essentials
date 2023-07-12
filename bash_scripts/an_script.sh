#!/bin/bash

sudo apt update && sudo apt dist-upgrade -y

sudo apt install curl -y

#install nvim
cd
sudo apt-get install ninja-build gettext cmake unzip curl -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

cd
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip

mkdir ~/.local/share/fonts
mv FiraCode.zip ~/.local/share/fonts
cd ~/.local/share/fonts
unzip FiraCode.zip

fc-cache -fv
rm FiraCode.zip

cd
sudo apt install neofetch -y
sudo apt install python3-venv -y


$ curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb	
#install astrovim

mv ~/.config/nvim ~/.config/nvim.bak

mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
nvim

cd
