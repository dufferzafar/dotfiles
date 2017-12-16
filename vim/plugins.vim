"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/dufferzafar/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/dufferzafar/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'rking/ag.vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'metakirby5/codi.vim'

" New Syntaxes
NeoBundle 'groenewege/vim-less'

" Airline
NeoBundle 'bling/vim-airline'
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

set laststatus=2 " Show airline with single file
set noshowmode " Hide default mode indicator

" Required:
call neobundle#end()

" Make Ctrl-P plugin a lot faster for Git projects
let g:ctrlp_use_caching = 0
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
endif

" Required:
filetype plugin indent on
syntax on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
