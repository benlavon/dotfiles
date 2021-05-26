set number

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

call plug#end()

" Break the arrow key habit
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
