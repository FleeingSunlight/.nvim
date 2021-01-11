set number
set nocompatible

" unblevable/quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nnoremap <esc> <silent> :noh<cr><esc>

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
