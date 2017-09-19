execute pathogen#infect()

filetype on
syntax on
colorscheme smyck

set guifont=Menlo\ Regular:h18

set lines=60 columns=240
set colorcolumn=80
set number

map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

filetype indent on
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

