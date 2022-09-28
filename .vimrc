call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'hdima/python-syntax'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
call plug#end()

" syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" nerdtree settings
map <C-n> :NERDTreeToggle<CR>

" use flake8 for linting python
let g:syntastic_python_checkers = ['flake8']

" ignore 80 char line limit
let g:syntastic_python_flake8_args='--ignore=E501'

" populate error list set to off. Re-enable by setting below to 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

syntax on
let python_highlight_all = 1
set background=dark
colorscheme solarized
let maplocalleader = ","
let mapleader = "\\"

"Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"Adding newline at end of file is default for vim

"Set default tab width to 4
set shiftwidth=4
set softtabstop=4

"Expand tabs to spaces
set expandtab

" enable syntax highlighting for markdown
:set syntax=markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

set relativenumber
set number
set nu

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
