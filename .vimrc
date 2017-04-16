set nocompatible  "required
filetype off      "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundel should install plugins
" call vundle#begin('~some/path/here')

"let Vundle manager Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead
" of Plugin

Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()      " required
filetype plugin indent on  "required
set wildmode=longest,list,full
set wildmenu

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

"Plugin 'scrooloose/syntastic'
"Plugin 'nvie/vim-flake8'

let python_highlight_all=1
syntax on
execute pathogen#infect()
call pathogen#helptags()

"This commment is dark
