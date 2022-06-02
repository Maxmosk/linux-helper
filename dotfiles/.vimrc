" MAPPINGS ----------------------------------------------------------------- {{{

" Enable keys to open and close NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" -------------------------------------------------------------------------- }}}


" GENERAL ------------------------------------------------------------------ {{{

" Enable line numbering
set number

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of
"                                                               file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Indent TABs on next line by style of current line
set smartindent

" Indent TABs on next line by style of current line for C-like code
":set cindent

" -------------------------------------------------------------------------- }}}


" AIRLINE ------------------------------------------------------------------ {{{

let g:airline_theme='owo'
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}' " in section B of the status line display the CWD

" TABLINE:

let g:airline#extensions#tabline#enabled = 1           " enable airline tabline
let g:airline#extensions#tabline#show_close_button = 0 " remove 'X' at the end of the tabline
let g:airline#extensions#tabline#tabs_label = ''       " can put text here like BUFFERS to denote buffers (I clear it so nothing is shown)
let g:airline#extensions#tabline#buffers_label = ''    " can put text here like TABS to denote tabs (I clear it so nothing is shown)
let g:airline#extensions#tabline#fnamemod = ':t'       " disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0    " dont show tab numbers on the right
let g:airline#extensions#tabline#show_buffers = 0      " dont show buffers in the tabline
let g:airline#extensions#tabline#tab_min_count = 2     " minimum of 2 tabs needed to display the tabline
let g:airline#extensions#tabline#show_splits = 0       " disables the buffer name that displays on the right of the tabline
let g:airline#extensions#tabline#show_tab_nr = 0       " disable tab numbers
let g:airline#extensions#tabline#show_tab_type = 0     " disables the weird ornage arrow on the tabline

" -------------------------------------------------------------------------- }}}


" NERDTree ----------------------------------------------------------------- {{{

" Nice interface
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Closing automatically
let NERDTreeQuitOnOpen = 1

" -------------------------------------------------------------------------- }}}

