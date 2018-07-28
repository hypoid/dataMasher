Before starting, make sure that the appropriate python is active.

cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
	    --enable-multibyte \
	    --enable-python3interp=yes \
	    --with-python3-config-dir=/usr/lib/python3.4/config \
	    --enable-cscope \
	    --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim81
sudo make install

#After installing from source, do the following:
cd ~/my-vimrc
cp .vimrc ~/.vimrc
#That will put the current ~/.vimrc in play

#Get Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#After this, run vim and type ':PluginInstall' to install part of YouCompleteMe

#Then, the compiled conponent of YouCompleteMe will need to be made:
sudo apt install build-essential cmake3 python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py

#Finally, install Flake8 pip package:
pip install flake8


