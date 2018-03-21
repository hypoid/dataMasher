#!/bin/bash
cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
	    --enable-multibyte \
	    --enable-python3interp=yes \
	    --with-python3-config-dir=/usr/lib/python3.4/config \
	    --enable-cscope \
	    --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo make install
