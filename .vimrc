set number

set hlsearch incsearch

set colorcolumn=80

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
