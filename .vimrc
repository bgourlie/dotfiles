" # Vundle config {{{ 
set nocompatible
filetype off
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle')
else
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
endif
 
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-sensible'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/unite.vim' 
Plugin 'Shougo/vimfiler'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'groenewege/vim-less'
Plugin 'othree/html5.vim'
Plugin 'szw/vim-ctrlspace'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-obsession'
Plugin 'rust-lang/rust.vim'

filetype plugin indent on
" }}} 

:let mapleader="\<space>" " map <Leader> to space
noremap <silent> <Leader>f :VimFilerBufferDir<CR>
noremap <silent> <Leader>s :Gstatus<CR>
noremap <silent> <Leader>p :Gpush<CR>

set number
set autoindent
set autoread
set backspace=indent,eol,start   
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set noerrorbells
set nowrap
set autowriteall " save buffer when switching away from it

" Make arrowkey resize viewports {{{
nnoremap <Left> :vertical resize +1<CR>
nnoremap <Right> :vertical resize -1<CR>
nnoremap <Up> :resize +1<CR>
nnoremap <Down> :resize -1<CR>
nnoremap <C-w><Right> :exe "vertical resize +" . (winwidth(0) * 1/2)<CR>
nnoremap <C-w><Left> :exe "vertical resize -" . (winwidth(0) * 1/2)<CR>
nnoremap <C-w><Up> :exe "resize +" . (winheight(0) * 1/2)<CR>
nnoremap <C-w><Down> :exe "resize -" . (winheight(0) * 1/2)<CR>
" }}}

" Look and feel {{{
syntax enable
set background=dark
colorscheme solarized

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
" }}} 

" vimfiler settings
let g:vimfiler_as_default_explorer = 1
