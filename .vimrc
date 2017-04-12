set nocompatible
set number

" set the runtime path to include Vundle and initialize
filetype off  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
call vundle#end()            " required
filetype plugin indent on    " required

" Config for CtrlP:
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Enable syntax highlighting
filetype indent plugin on
execute pathogen#infect()
" filetype plugin indent on
syntax enable
set background=light
colorscheme solarized

" Use case insensitive search, except when using capital letters
set nohlsearch 
set ignorecase
set smartcase
 
" Config for indent
set backspace=indent,eol,start
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
 
" Always display the status line, even if only one window is displayed
set showcmd
set cmdheight=2
set laststatus=2
set statusline+=%{fugitive#statusline()}

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
set mouse=a
set clipboard=unnamed
 
" Config for airline:
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
set t_Co=256

let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

" Config for generating banner for cpp source code using autocmd
autocmd bufnewfile *.cpp so /Users/xiaoyubai/Desktop/LeetCode_Adventure/cppBanner.txt
autocmd bufnewfile *.cpp exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.cpp exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.cpp execute "normal ma"
autocmd Bufwritepre,filewritepre *.cpp exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.cpp execute "normal `a"


