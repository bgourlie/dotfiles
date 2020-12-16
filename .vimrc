set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
Plug 'othree/html5.vim'
Plug 'szw/vim-ctrlspace'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-obsession'
Plug 'rust-lang/rust.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Kazark/vim-SimpleSmoothScroll'
Plug 'lambdatoast/elm.vim'
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'lepture/vim-velocity'
call plug#end()

filetype plugin indent on

:let mapleader="\<space>" " map <Leader> to space

" easier ex commands
nmap ; :

" integrate ctrl-space and ag (the silver searcher)
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

" Save/Load ctrl-space workspace on exit/start
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1

" consistent window navigation for normal mode and terminal
" mode using alt+hjkl.
" The weird unicode mappings are equivalent to the preceding mapping,
" but a hack to make it work on mac.

if has("nvim")
  " Simplify mapping to enter normal mode from term mode
  :tnoremap <C-j><C-k> <C-\><C-n>
  " Switch window mappings
  :tnoremap <C-h> <C-\><C-n><C-w>h
  :tnoremap <C-j> <C-\><C-n><C-w>j
  :tnoremap <C-k> <C-\><C-n><C-w>k
  :tnoremap <C-l> <C-\><C-n><C-w>l
endif

:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

nmap <Leader>hn <Plug>GitGutterNextHunk
nmap <Leader>hN <Plug>GitGutterPrevHunk

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

nnoremap <Left> :vertical resize +1<CR>
nnoremap <Right> :vertical resize -1<CR>

nnoremap <C-w><Right> :exe "vertical resize +" . (winwidth(0) * 1/2)<CR>
nnoremap <C-w><Left> :exe "vertical resize -" . (winwidth(0) * 1/2)<CR>
nnoremap <C-w><Up> :exe "resize +" . (winheight(0) * 1/2)<CR>
nnoremap <C-w><Down> :exe "resize -" . (winheight(0) * 1/2)<CR>

syntax enable
set background=dark

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" highlight column 80
highlight ColorColumn ctermbg=black
let &colorcolumn="81,".join(range(120,999),",")

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

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
