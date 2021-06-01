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
"Plugin 'ap/vim-buftabline'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-commentary'

call vundle#end()
filetype plugin indent on
set hidden

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <C-]> :bnext<CR>
"noremap <C-[> :bprev<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 0
let g:ctrlp_split_window = 1
"let g:ctrlp_match_window_reversed = 0
map <silent> <C-p> :CtrlP


" Key mappings
imap kj <Esc>
nnoremap - $
nnoremap ; :

set smartindent
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
set expandtab
set tabstop=2 softtabstop=2 shiftwidth=2

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

nnoremap <silent> <F4> :let @+=expand("%:p")<CR>
function! CopyFilePath()
	:let @+ = expand("%:p")
endfunction

map <silent> <C-f> :call CopyFilePath()<CR>

function! WordCount()
   let s:old_status = v:statusmsg
   let position = getpos(".")
   exe ":silent normal g\<c-g>"
   let stat = v:statusmsg
   let s:word_count = 0
   if stat != '--No lines in buffer--'
     let s:word_count = str2nr(split(v:statusmsg)[11])
     let v:statusmsg = s:old_status
   end
   call setpos('.', position)
   return s:word_count
endfunction

" always display status line
set laststatus=2
set t_RV=

