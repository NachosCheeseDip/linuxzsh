#!/usr/bin/env bash
sudo pacman -S lxappearance picom pcmanfm-gtk3 lxterminal dunst xorg xorg-xinit ttf-jetbrains-mono zsh zsh-syntax-highlighting firefox noto-fonts noto-fonts-cjk && \
cp ~/Downloads/linuxzsh/.zshrc ~/ && \
cp ~/Downloads/linuxzsh/.vimrc ~/ && \
cp ~/Downloads/linuxzsh/.xinitrc ~/ && \
mkdir ~/.config/picom && cp ~/Downloads/linuxzsh/picom.conf ~/.config/picom/ && \
mkdir ~/.config/dunst && cp ~/Downloads/linuxzsh/dunstrc ~/.config/dunst/ && \
mkdir ~/.config/lxterminal && cp ~/Downloads/linuxzsh/lxterminal.conf ~/.config/lxterminal && \
cd ~/.config && git clone https://git.suckless.org/dwm && cd dwm && cp ~/Downloads/linuxzsh/dwm.diff ./ && patch < dwm.diff && make && sudo make install && \
cd ~/.config && git clone https://git.suckless.org/dmenu && cd dmenu && make && sudo make install && \
cd ~/.config && git clone https://git.suckless.org/slstatus && cd slstatus && cp ~/Downloads/linuxzsh/slstatus.diff ./ && patch -p1 < slstatus.diff && make && sudo make install && \
chsh -s /bin/zsh && printf "Finished!"

