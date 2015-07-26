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
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'mattn/emmet-vim'
" Plugin 'Shougo/unite.vim' 
" Plugin 'Shougo/vimfiler'
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

" easier ex commands
nmap ; :

" noremap <silent> <Leader>f :VimFilerBufferDir<CR>

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
set autoread
set ignorecase
set smartcase
set nobackup
set noswapfile
set noerrorbells
set nowrap
set autowriteall " save buffer when switching away from it
set hidden
set autochdir

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

" todo: make this specific to rust files
nnoremap <leader>t :term cargo test<CR>

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

" highlight column 80
highlight ColorColumn ctermbg=black
let &colorcolumn="81,".join(range(120,999),",")

" vimfiler settings
" let g:vimfiler_as_default_explorer = 1

"" Colors of CtrlSpace for Solarized Dark
" (MacVim and Console Vim under iTerm2 with Solarized Dark theme)

" Based on Solarized TablineSel
hi CtrlSpaceSelected ctermfg=10 ctermbg=7 cterm=reverse,bold

" Based on Solarized Tabline/TablineFill
" original Normal
" hi CtrlSpaceNormal   guifg=#839496 guibg=#073642 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
" tweaked Normal with darker background in Gui
hi CtrlSpaceNormal ctermfg=12 ctermbg=0 cterm=NONE

" Based on Title
hi CtrlSpaceSearch ctermfg=9 ctermbg=NONE term=bold cterm=bold

" Based on PmenuThumb
hi CtrlSpaceStatus term=reverse cterm=reverse ctermfg=12 ctermbg=8

" make the current window more obvious
hi StatusLine   ctermfg=15 ctermbg=240 cterm=bold
hi StatusLineNC ctermfg=245 ctermbg=237 cterm=none
