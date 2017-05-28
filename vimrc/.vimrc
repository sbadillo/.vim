" Pathogen (must stay on top)

execute pathogen#infect()
execute pathogen#helptags()

set t_Co=256  "enable 256 colors in vim, put before setting colorscheme

colorscheme Tomorrow-Night-Eighties     "nice gray-dark theme
"colorscheme badwolf      	"nice dark theme, with popout reds
"colorscheme molokai        "nice dark theme, with alien green

"------------------------------------------------------------
"  
" Set 'nocompatible' to ward off unexpected things that your distro might have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
  
" Attempt to determine the type of a file based on name and content
filetype indent plugin on
    
syntax on		" enable syntax highlighting

" Tabs and identation
set tabstop=4		" visual spaces per TAB
set softtabstop=4	" spaces in tab when editing
set expandtab		" tabs are spaces

" UI config

set number		    " show line number
set showcmd         " show last command in bottm right corner
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight [{()}]

" Searching

set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" Custom mappings
inoremap jk <esc>   " jk is escape

"------------------------------------------------------------


" ###  NERDTree config ###

" NERDTRee - executee automatically when vim starts:
"autocmd vimenter * NERDTree

" NERDTree - execute automatically even when no file is specified:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTree set C-n as nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" NERDTree start in directory is directory argument is given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" NERDTree : close vim if only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
