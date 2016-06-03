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

git@github.com:nmathewson/Libevent.git

cd Libevent

sh autogen.sh && ./configure && make

sudo make install

cd ..

git clone git@github.com:tmux/tmux.git

cd tmux

sh autogen.sh

sh autogen.sh && ./configure && make

sudo make install



