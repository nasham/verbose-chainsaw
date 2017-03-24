set encoding=utf-8
inoremap jj <ESC>

" Enables the plugin manager pathogen
execute pathogen#infect()


" Displays the line numbers in the left margin, the current line is 0 and then
" you can se how fare the other line are, good if you have to delete multiple
" lines. 
set relativenumber

set ruler
set visualbell
set modelines=0
set hidden 
set cursorline
set showcmd
set showmode
set undofile

vnoremap . :norm.<CR>

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'
"Plugin 'Valloric/YouCompleteMe'
Bundle 'Valloric/YouCompleteMe'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'


set  rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256




set wildmenu
set wildmode=longest:list,full
set mouse=a

colorscheme murphy 

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

     set tabstop=4
     set softtabstop=4
     set shiftwidth=4
"     set textwidth=79
     set expandtab
     set autoindent
     set fileformat=unix

let python_highlight_all=1
syntax on

if has('gui_running')
      set background=dark
        colorscheme solarized
    else
          colorscheme zenburn
      endif

call togglebg#map("<F5>")
set spelllang=sv,en
set spell

nnoremap <leader>f 1z=
silent! nnoremap <leader>n :NERDTree<CR>

" change leader key to the space key
let mapleader = "\<Space>"

command! Wq :wq


"Turn on and off autoindent with past command, this make it possible to past
"indented code in to vim. 
set pastetoggle=<f3>


" Set path for files 
set path+=~/blackhole/**
