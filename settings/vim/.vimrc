syntax on
set incsearch
set ignorecase
set smartcase
set number
set nocompatible
set clipboard=unnamed

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'scrooloose/nerdTree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-buftabline'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on
set hidden

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap <C-1> <C-w>h
noremap <C-2> <C-w>l

noremap <C-]> :bnext<CR>
" noremap <C-[> :bprev<CR>


let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
map <silent> <C-p> :CtrlP

let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_quit_key='<Esc>'


" Key mappings
imap kj <Esc>
noremap - $

set smartindent
set tabstop=2
set shiftwidth=2

set t_Co=256

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

set fileencoding=utf-8
set encoding=utf-8
set noswapfile

" Move lines up and down
nnoremap <S-k> :m .-2<CR>==
nnoremap <S-j> :m .+1<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

let mapleader = ","
nmap <leader>ne :NERDTree<cr>
let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>
filetype plugin on

colorscheme railscasts

noremap <silent> <F4> :let @+=expand("%:p")<CR>
function! CopyFilePath()
	:let @+ = expand("%:p")
endfunction

map <silent> <C-f> :call CopyFilePath()<CR>

