syntax on
set incsearch
set ignorecase
set smartcase
set number

" Key mappings
imap df <Esc>
noremap - $
nnoremap ; :

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
let g:loaded_matchparen= 0

" Enable use of the mouse for all modes
set mouse=a

set t_Co=256
colorscheme ir_black

" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction

autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

" recognize Gemfile
autocmd BufNewFile,BufRead Gemfile set filetype=ruby

filetype on
set nocompatible
set fileencoding=utf-8
set encoding=utf-8
set noswapfile

" Move lines up and down
nnoremap <S-k> :m .-2<CR>==
nnoremap <S-j> :m .+1<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

execute pathogen#infect()
let mapleader = ","
nmap <leader>ne :NERDTree<cr>
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>
filetype plugin on

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn))$'
let g:ctrlp_use_caching = 0


