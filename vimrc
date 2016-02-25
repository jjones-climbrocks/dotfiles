" Jeff Jones

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
set runtimepath+=~/.vim/colors 		" Add additional path to runtimepath

" Colors
set t_Co=256                            " Set colors to 256 or some schemes won't work
syntax enable                           " Enable syntax processing
colorscheme mango                       " Set colorscheme mango.vim 

" Tabs and Spaces
set tabstop=4                   " number of visual spaces per TAB
set expandtab                   " tabs or really spaces
set softtabstop=4               " number of spaces a TAB counts when editing
set shiftwidth=4
" UI Layout
set number                      " show line numbers
set showcmd                     " show command in bottom bar
"set cursorline                  " highlight the current line
set lazyredraw                  " redraw only when needed
set showmatch                   " highlight matching [{()}]
"set wildmenu                   " visual autocomplete for command menu
" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches


" Folding
set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " sets the max number of folds
set foldmethod=indent           " fold based on indent level"

" Keyboard Mappings
nnoremap <leader><space> :nohlsearch<CR>        " turn off search highlight \<Space>
"nnoremap <space> za                             " space bar opens/closes folds



" Leader Mappings
"let mapleader=","                      " leader is comma
inoremap jk <esc>                       " jk is = the escape button
nnoremap <leader>s :mksession<CR>       " save session
nnoremap <C-n> :call NumberToggle()<cr> " calls function NumberToggle


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Functions
function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
