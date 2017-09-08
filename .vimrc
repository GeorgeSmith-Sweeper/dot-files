call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'hdima/python-syntax'
call plug#end()

syntax on
let python_highlight_all = 1
set background=dark
colorscheme solarized
let maplocalleader = ","
let mapleader = "\\"

set relativenumber 
set number  
set nu

" enables backspaces when using homebrew Vim
set backspace=2

" displays an incomplete commmand
set showcmd

" enables copy and pasting in tmux sessions and terminal
if $TMUX == ''
	set clipboard+=unnamed
endif

set tabstop=2
set autoindent

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" move line down in a file
:noremap <leader>- yyddp

" move line up in a file
:noremap <leader>_ yyddkkp

" UpperCase current word in INSERT mode
:inoremap <c-u> <esc>viwUi

" UpperCase current word in NORMAL mode
:nnoremap <c-u> viwU

" image to display on Vim startup
echo "Starting Vim" 
