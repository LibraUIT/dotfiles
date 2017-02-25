
" NeoBundle Scripts-----------------------------
if has('vim_starting')  
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)  
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))  
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'vim-scripts/grep.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'Shougo/deoplete.nvim'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'slim-template/vim-slim.git'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'dracula/vim'


" ------------------------------------
" THIS IS WHERE YOUR PLUGINS WILL COME
" ------------------------------------

call neobundle#end()  
filetype plugin indent on

if has('mouse')
  set mouse=a
end

filetype on
filetype indent on
filetype plugin on
syntax on

set clipboard=unnamedplus
set nu
set autoread
set autowrite
set autoindent
set si "smart indent
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp
set linespace=1
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h13
let g:auto_ctags = 1
set wrap linebreak nolist
set encoding=utf8
set background=dark
set textwidth=80
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h13


"========================================================
" MAPPING NERDTree
"========================================================
map <silent> <leader>ls <ESC>:NERDTreeToggle<CR>
map <silent> <leader>rev :NERDTreeFind<CR>
let NERDTreeMapOpenSplit = 'x'
let NERDTreeMapOpenVSplit = 'v'

"========================================================



"========================================================
" CONFIG AIRLINE
"========================================================

let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
if !exists('g:airline_symbols')
endif
let g:airline_symbols.space = "\ua0"
let s:spc = g:airline_symbols.space
function! AirlineInit()
  let g:airline_section_a = airline#section#create(['%{toupper(mode())}'])
  let g:airline_section_b = airline#section#create([''])
  let g:airline_section_z = airline#section#create(['%p%%'])
endfunction


"========================================================
" CONFIG GITGUTTER
"========================================================
let g:gitgutter_sign_added = '🌱'
let g:gitgutter_sign_modified = '✨'
let g:gitgutter_sign_removed = '🐾'
let g:gitgutter_sign_removed_first_line = '🐾'
let g:gitgutter_sign_modified_removed = '🐾'
"========================================================
" CONFIG MARKDOWN
"========================================================
nmap <leader>md :LivedownPreview<CR>
let g:markdown_enable_spell_checking = 0

"========================================================
" CONFIG MAP KEY

" Map leader key
let mapleader = "," " map leader key to ,
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Map Esc to jj
:imap jj <Esc>

" Hide highlight 
map <silent> <leader><cr> :noh<cr>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

" Coppy all lines
map <C-a> :%y+<Esc>

" Stick this in your vimrc to open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>


"========================================================


" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck  
"End NeoBundle Scripts-------------------------
