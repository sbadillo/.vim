" SERGIO VIM CONFIG   

"a good vimrc example: https://dougblack.io/words/a-good-vimrc.html

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
set shiftwidth=4    " how many spaces to ident

" UI config

set number		    " show line number
set showcmd         " show last command in bottm right corner
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight [{()}]

"Searching

set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" Custom mappings
inoremap jk <esc>   " jk is escape

"------------------------------------------------------------

" Plugins 

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

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'       " matching file top to bottom
let g:ctrlp_switch_buffer = 0                       " always open files in new buffer
let g:ctrlp_working_path_mode = 0                   " allows change working directory and ctrlp respects that

"--------------------------------------------------------------

" TMUX - allows cursor change in tmux mode
    " These lines change the cursor from block cursor mode to vertical bar cursor mode when using tmux. 
    " Without these lines, tmux always uses block cursor mode.

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif



