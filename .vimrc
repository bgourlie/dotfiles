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
Plugin 'airblade/vim-gitgutter'

filetype plugin indent on
" }}} 

:let mapleader="\<space>" " map <Leader> to space
noremap <silent> <Leader>f :VimFilerBufferDir<CR>
noremap <silent> <Leader>s :Gstatus<CR>
noremap <silent> <Leader>p :Gpush<CR>


" consistent window navigation for normal mode and terminal
" mode using alt+hjkl.
" The weird unicode mappings are equivalent to the preceding mapping,
" but a hack to make it work on mac.

if has("nvim")
  " Simplify mapping to enter normal mode from term mode 
  :tnoremap <C-\><C-\> <C-\><C-n>

  :tnoremap <A-h> <C-\><C-n><C-w>h
  :tnoremap ˙ <C-\><C-n><C-w>h
  :tnoremap <A-j> <C-\><C-n><C-w>j
  :tnoremap ∆ <C-\><C-n><C-w>j
  :tnoremap <A-k> <C-\><C-n><C-w>k
  :tnoremap ˚ <C-\><C-n><C-w>k
  :tnoremap <A-l> <C-\><C-n><C-w>l
  :tnoremap ¬ <C-\><C-n><C-w>l
endif

:nnoremap <A-h> <C-w>h
:nnoremap ˙ <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap ∆ <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap ˚ <C-w>k
:nnoremap <A-l> <C-w>l
:nnoremap ¬ <C-w>l

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

" Remove these because they cause the track pad to inadvertently resize
"nnoremap <Up> :resize +1<CR>
"nnoremap <Down> :resize -1<CR>
"
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
