set colorcolumn=80
set textwidth=79

set number relativenumber

set history=10000

set showmatch

set hlsearch

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set nowrap

set updatetime=100

" Reselec pasted text
nnoremap gp `[v`]

" Fold by syntax
set foldmethod=syntax
" Don't fold by default
set nofoldenable

" Trigger git co-author input with :Gca
command! -nargs=+ Gca :r!git log -n100 --pretty=format:"\%an <\%ae>" | grep -i '<args>' | head -1 | xargs echo "Co-authored-by:"

" Copy filename to clipboard
nmap cs :let @*=expand("%")<CR>
" Copy filename including full path to clipboard
nmap cl :let @*=expand("%:p")<CR>

" Auto-install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

" Solarized theme
Plug 'altercation/vim-colors-solarized'

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

" Plug into Dash
Plug 'camspiers/snap'
Plug 'mrjones2014/dash.nvim', { 'do': 'make install' }

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Copilot
Plug 'github/copilot.vim'

" Solidity syntax highlighting
Plug 'tomlion/vim-solidity'

" Open stuff in GitHub
Plug 'ruanyl/vim-gh-line'

" Show git lines changed
" Also, jump between chunks with ]c and [c
Plug 'airblade/vim-gitgutter'

" Highlight yanked stuff
Plug 'machakann/vim-highlightedyank'

call plug#end()

" Solarized
syntax enable
set background=light
colorscheme solarized

" Open fzf :GFiles
noremap <C-p> :GFiles<Cr>

" Open fzf Silver Searcher
noremap <C-g> :Ag<Cr>

" Open fzf :Buffers
noremap <silent><leader>l :Buffers<Cr>

" Make sure dash.nvim is pointing to the right Dash
lua << EOF
require('libdash_nvim').setup({
  dash_app_path = '/Applications/Setapp/Dash.app',
})
EOF

" Open Dash find
noremap <silent><leader>d :Dash<Cr>

" Automatically get rid of white space
autocmd BufWritePre * :%s/\s\+$//e

" Make vim-gitgutter look like number bar
highlight! link SignColumn LineNr
