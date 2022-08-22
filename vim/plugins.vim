" Required:
call plug#begin('~/.vim/plugged')

" Add or remove your Bundles here:
Plug 'dyng/ctrlsf.vim'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
" Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-commentary'

" https://github.com/preservim/nerdcommenter
" <leader>cc to comment lines
Plug 'preservim/nerdcommenter'

    " Align line-wise comment delimiters flush left instead of following code indentation
    let g:NERDDefaultAlign = 'left'

" Plug 'altercation/vim-colors-solarized'
Plug 'plasticboy/vim-markdown'

" https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" Multiple cursors!
" https://github.com/terryma/vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" New Syntaxes
Plug 'groenewege/vim-less'

" https://github.com/python-mode/python-mode
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

" Airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" let g:airline_theme = 'powerlineish'

" Statusline improvements
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts=1
let g:airline_detect_spell=0
" let g:airline_left_sep='▓▒░'
" let g:airline_left_alt_sep=''
" let g:airline_right_sep='░▒▓'
" let g:airline_right_alt_sep=''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

let g:airline_skip_empty_sections = 1
let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'ni' : 'Ni',
    \ 'no' : 'P',
    \ 'i'  : 'I',
    \ 'ic' : 'I',
    \ 'ix' : 'I',
    \ 'R'  : 'R',
    \ 'Rv' : 'Rv',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ 't'  : 'T',
    \ }
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#neomake#enabled=1
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#whitespace#symbol='µ'

let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#buffer_min_count=2
" let g:airline#extensions#tabline#buffer_nr_format='%s '
" let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''
" let g:airline#extensions#tabline#show_close_button=0
" let g:airline#extensions#tabline#show_tab_type=0
let g:airline#extensions#tabline#tab_min_count=2
" let g:airline#extensions#tabline#show_splits=0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0

let g:airline_theme='angr'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.dirty = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.notexists = ' ▼'
let g:airline_symbols.crypt = '🔒' 

" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Display indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'

set laststatus=2 " Show airline with single file
set noshowmode " Hide default mode indicator

" Syntax highlighting for Justfiles
" https://github.com/vmchale/just-vim
Plug 'vmchale/just-vim'

" Required:
call plug#end()
