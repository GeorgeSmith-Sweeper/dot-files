call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'hdima/python-syntax'
Plug 'pangloss/vim-javascript'
Plug 'elixir-editors/vim-elixir'
call plug#end()

" syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" nerdtree settings
map <C-n> :NERDTreeToggle<CR> 

" syntax highlighting for javascript
let g:javascript_plugin_jsdoc = 1

" use flake8 for linting python
let g:syntastic_python_checkers = ['flake8']

" ignore 80 char line limit
let g:syntastic_python_flake8_args='--ignore=E501'

" populate error list set to off. Re-enable by setting below to 1
let g:syntastic_always_populate_loc_list = 2
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

" enable syntax highlighting for markdown
:set syntax=markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

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

