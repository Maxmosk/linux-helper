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

let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%t'
let g:airline_section_c = '%{FugitiveHead()}'


" -------------------------------------------------------------------------- }}}


" NERDTree ----------------------------------------------------------------- {{{

" Nice interface
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Closing automatically
let NERDTreeQuitOnOpen = 1

" -------------------------------------------------------------------------- }}}

