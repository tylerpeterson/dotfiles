colorscheme desert

set incsearch
set hls
set guifont=Menlo-Regular:h20
au BufRead,BufNewFile *.md.txt setfiletype markdown

set shiftwidth=2 expandtab smartindent autoindent tabstop=2

call plug#begin('~/.vim/plugged')

Plug 'rizzatti/dash.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

call plug#end()

