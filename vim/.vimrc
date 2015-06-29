
" I use NeoBundle for managing plugins
source ~/.dotfiles/vim/plugins.vim

" Custom keys
source ~/.dotfiles/vim/keymap.vim

" Git commit file
autocmd Filetype gitcommit setlocal spell textwidth=72
" My custom color scheme
colorscheme monokai
" Insert Current Date & Time
iab xdatex <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" Improved Search
:set incsearch
:set hlsearch

" Display the current line
:set cursorline

" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>
