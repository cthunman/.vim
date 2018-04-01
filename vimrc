execute pathogen#infect()

set term=screen-256color

filetype on
syntax on
colorscheme smyck

set guifont=Menlo\ Regular:h18

set lines=60 columns=240
set colorcolumn=90
set number

map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

filetype indent on
filetype plugin on
set nocp
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set showmatch
set updatetime=250

autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
nnoremap <leader><leader> :e#<CR>

" Current plugins:
" https://github.com/scrooloose/nerdcommenter

" https://github.com/airblade/vim-gitgutter
" https://github.com/scrooloose/nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '\.pyc$']
" https://github.com/wincent/command-t/
set wildignore+=*.log,*.sql,*.cache
noremap <Leader>r :CommandTFlush<CR>
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
" https://github.com/tpope/vim-fugitive
" git@github.com:ervandew/supertab.git
" git@github.com:nvie/vim-flake8.git


" JSON Formatting
map <leader>jt :%!python -m json.tool<CR>
