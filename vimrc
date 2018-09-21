set nocompatible

call pathogen#infect()
call pathogen#helptags()

set number

if !isdirectory($HOME."/.vim/temp")
    call mkdir($HOME."/.vim/temp/backup", "p")
    call mkdir($HOME."/.vim/temp/swap", "p")
    call mkdir($HOME."/.vim/temp/undo", "p")
endif
set backupdir=~/.vim/temp/backup//
set directory=~/.vim/temp/swap//
set undodir=~/.vim/temp/undo//

filetype plugin indent on
syntax on
runtime! config/**/*.vim

set guioptions=

colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='medium'
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set autoread
set nofixendofline
set cursorline

set incsearch

set bri
set briopt=shift:2

set splitbelow
set splitright

set gfn=Source\ Code\ Pro:h14
set linespace=2

set shortmess=filnxtToOI

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|node_modules)$'
let g:ctrlp_working_path_mode = '.'

let g:sql_type_default = 'pgsql'
if &term =~ '256color'
    set t_ut=
endif

au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * checktime

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
