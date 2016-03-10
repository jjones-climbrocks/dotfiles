" Jeff Jones Vim Config File

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=100

" Enable Pathogen
execute pathogen#infect()

" Set path for locating Vim colors in Linux
set runtimepath+=~/.vim/colors    

" Filetype detection[ON] plugin[ON] indent[ON]
filetype plugin indent on  


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off Vi compatibility
set nocompatible              

" Shows # of lines before and after cursor
set scrolloff=5

" Provides options for commands as you type (use TAB to complete)
set wildmenu

" Show command in bottom bar
set showcmd

" Don't wrap text
set nowrap

" preserves TABS when copying and pasting (Messes up some plugins)
"set paste

" Always show current position
set ruler

" Height of the commad bar
set cmdheight=2

" Show matching [{()}] when cursor is over
"set showmatch

" Search as characters are entered
set incsearch

" Hightlight matches (add something to make it quick to unhighlight :nohl)
set hlsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8 

" Show line numbers (Ctrl-n toggles relative number ON/OFF)
set number 

" Highlight the current line (how do I change how it highlights)
"set cursorline  

" Folding parameters
set foldenable                    " enable folding
set foldlevelstart=10             " open most folds by default
set foldnestmax=10                " sets the max number of folds
set foldmethod=indent             " fold based on indent level"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set colors to 256 or some colorschemes won't work
set t_Co=256

" Enable syntax highlighting
syntax enable

" Set colorscheme (:colorscheme Space+Ctrl+d will list available schemes)
colorscheme badwolf


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" 1 TAB == 4 spaces
set tabstop=4  
set shiftwidth=4             

" Use TABS at the start of a line, spaces everywhere else
set smarttab

" Number of spaces a TAB counts when editing
set softtabstop=4   

" Auto indent from previous line
set autoindent  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Keyboard mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" MapLeader is a comma 
let mapleader = ","
let g:mapleader = ","

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Normal Mode Keyboard mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off highlighted search results (same as :nohl)
nnoremap <leader><space> :nohlsearch<CR>

" Save session
nnoremap <leader>s :mksession<CR>

" Calls function NumberToggle()
nnoremap <C-n> :call NumberToggle()<cr>

" Disable arrow keys (force me to use hjkl)
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>





" Remap the <ESC>>
inoremap jj <ESC>




"nnoremap <space> za                     " space bar opens/closes folds
"inoremap jk <esc>                       " jk is = the escape button


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Recommended Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Toggles Relative Number ON/OFF 
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
