" Downloaded the monokai scheme from https://github.com/flazz/vim-colorschemes/raw/master/colors/Monokai.vim

" Modified to suit my taste.

" Background is pure black, just like my Sublime

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "monokai"

hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE
hi Conditional ctermfg=197 ctermbg=NONE cterm=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor ctermfg=235 ctermbg=231 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
hi Define ctermfg=197 ctermbg=NONE cterm=NONE
hi DiffAdd ctermfg=118 ctermbg=None cterm=bold
hi DiffChange ctermfg=231 ctermbg=None cterm=NONE
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold
hi Directory ctermfg=141 ctermbg=NONE cterm=NONE
hi ErrorMsg ctermfg=197 ctermbg=None cterm=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE
hi Function ctermfg=148 ctermbg=NONE cterm=NONE
hi Identifier ctermfg=81 ctermbg=NONE cterm=NONE
hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE
hi LineNr ctermfg=102 ctermbg=None cterm=NONE
hi MatchParen ctermfg=197 ctermbg=NONE cterm=None
hi NonText ctermfg=None ctermbg=None cterm=NONE
hi Normal ctermfg=231 ctermbg=None cterm=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE
hi Operator ctermfg=197 ctermbg=NONE cterm=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline
hi Special ctermfg=231 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=59 ctermbg=237 cterm=NONE
hi Statement ctermfg=197 ctermbg=NONE cterm=NONE
hi StatusLine ctermfg=231 ctermbg=241 cterm=bold
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE
hi String ctermfg=186 ctermbg=NONE cterm=NONE
hi Tag ctermfg=197 ctermbg=NONE cterm=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE
hi WarningMsg ctermfg=197 ctermbg=None cterm=NONE

" Diffs
hi DiffAdded ctermfg=112 ctermbg=None cterm=NONE
hi DiffRemoved ctermfg=196 ctermbg=None cterm=NONE

" Git Commit
hi gitcommitFirstLine ctermfg=185 ctermbg=None cterm=None
hi gitcommitSummary ctermfg=230 ctermbg=None cterm=None

hi gitcommitOnBranch ctermfg=186 ctermbg=None cterm=None
hi gitcommitBranch ctermfg=141 ctermbg=None cterm=None

hi gitcommitWarning ctermfg=170 ctermbg=None cterm=None

hi gitcommitSelectedFile ctermfg=112 ctermbg=None cterm=None

hi gitcommitDiscardedFile ctermfg=196 ctermbg=None cterm=None

hi def link gitcommitType                 Comment
hi def link gitcommitUntrackedFile        Comment
