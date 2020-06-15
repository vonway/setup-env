#/bin/bash

echo "installing vimrc and vundle"
git clone https://github.com/vonway/vim-setup.git
cd vim-setup
./offline_install.sh

cd ..
echo "installing bashrc"
if [ -f "~/.bashrc" ]; then
 mv ~/.bashrc ~/.bashrc.bak
fi
cat ./bashrc >> ~/.bashrc

echo "set tui border-kind space" > ~/.gdbinit

cat >> ~/.screenrc << EOF
altscreen on
term xterm
startup_message off
autodetach on
defscrollback 4096
shell -$SHELL
vbell off
EOF


echo "installing gitconfig"
if [ -f "~/.gitconfig" ]; then
 mv ~/.gitconfig ~/.gitconfig.bak
fi
cat ./gitconfig >> ~/.gitconfig

echo "installing tmux"
sudo apt-get install tmux 
if [ -f "~/.tmux.conf" ]; then
 mv ~/.tmux.conf ~/.tmux.conf.bak
fi
cat ./tmux.conf >> ~/.tmux.conf

echo "you may need to add /usr/local/lib to /etc/ld.so.conf"
echo "  than exec ldconfig with root"
echo "set your git user and email if you using git"

# cat /etc/ld.so.conf
# include ld.so.conf.d/*.conf
# echo "/usr/local/lib" >> /etc/ld.so.conf
# ldconfig


echo "installing i3wm"
if [ -f "~/.config/i3/config" ]; then
 mv ~/.config/i3/config ~/.config/i3/config.bak
fi
mkdir -p ~/.config/i3
mkdir -p ~/.fonts
cat i3/config > ~/.config/i3/config
cp -rf i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp -rf i3/fontawesome-webfont.ttf  ~/.fonts/fontawesome-webfont.ttf
cp -rf i3/compton.conf  ~/.config/compton.conf






