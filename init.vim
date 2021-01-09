set number
set nocompatible

" unblevable/quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

call plug#begin('~/.vim/plugged')
  Plug 'unblevable/quick-scope'
  Plug 'vim-airline/vim-airline'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'preservim/nerdtree'
  Plug 'easymotion/vim-easymotion'
  Plug 'sheerun/vim-polyglot'
  Plug 'ryanoasis/vim-devicons'
call plug#end()
