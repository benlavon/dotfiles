set showcmd

set history=1000

set hlsearch incsearch

set colorcolumn=80

:set number relativenumber

" Indentation
set expandtab
set shiftwidth=2
set tabstop=2

" Theme
syntax enable
set background=light
" Make sure iTerm2 has Solarized colours set
colorscheme solarized

" Plugins
call plug#begin('~/.vim/plugged')

" Sensible defaults
Plug 'tpope/vim-sensible'

" Fancy stuff for Rails
Plug 'tpope/vim-rails'

" Fancy commenting, e.g. `gc` and `gcc` to comment out targets and lines
Plug 'tpope/vim-commentary'

" Fancy stuff for JavaScript
Plug 'pangloss/vim-javascript'

" Surround stuff with stuff
Plug 'tpope/vim-surround'

" Run any git commands
Plug 'tpope/vim-fugitive'

" Make sure Silver Searcher is installed to use :Ag
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Break the arrow key habit
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Find next + center
noremap <Leader>n nzz
noremap <Leader>N Nzz

" Open fzf :GFiles
noremap <C-p> :GFiles<Cr>

" Open fzf Silver Searcher
noremap <C-g> :Ag<Cr>

" Open fzf :Buffers
noremap <silent><leader>l :Buffers<Cr>

" Automatically trim whitespace from the following files
autocmd BufWritePre * :%s/\s\+$//e

