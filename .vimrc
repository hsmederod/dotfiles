set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle handle Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/matchit.zip'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'
Plugin 'tomasr/molokai'
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/lh-brackets'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/badwolf'

call vundle#end()

syntax on
filetype plugin indent on

au BufNewFile,BufRead *.yml set ts=2 sw=2 expandtab
au BufNewFile,BufRead *.py set ts=4 sw=4 expandtab

" highlight trailing whitespace,
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au BufEnter,InsertLeave * match ExtraWhitespace /[^\t]\zs\t\+\|\s\+$\| \+\ze\t/

color molokai

set number
set tabstop=4
set softtabstop=0
set noexpandtab
set smarttab
set shiftwidth=4
set autoindent
set smartindent
set hidden

" Search options
set gdefault
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch


" Disable markers used by lh-brackets
let b:usemarks = 0
map <C-n> :NERDTreeToggle<CR>
