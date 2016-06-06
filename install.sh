#/bin/bash
echo "installing vimrc and vundle"

git clone git@github.com:vonway/vim-setup.git

cd vim-setup

./install.sh

cd ..

echo "installing bashrc"

if [ -f "~/.bashrc" ]; then
 mv ~/.bashrc ~/.bashrc.bak
fi

cat ./bashrc >> ~/.bashrc

echo "installing tmux"

git clone git@github.com:nmathewson/Libevent.git

cd Libevent

sh autogen.sh && ./configure && make

sudo make install

cd ..

git clone git@github.com:tmux/tmux.git

cd tmux

sh autogen.sh

sh autogen.sh && ./configure && make

sudo make install



echo "you may need to add /usr/local/lib to /etc/ld.so.conf"
echo "  than exec ldconfig with root"



# cat /etc/ld.so.conf
# include ld.so.conf.d/*.conf
# echo "/usr/local/lib" >> /etc/ld.so.conf
# ldconfig

