" Vim syntax file
" Language: Squiffy
if exists("b:current_syntax")
  finish
endif

syn include @JS syntax/javascript.vim
syn region squiffyJS start="    " end="\n" contains=@JS

syn match squiffyCommand "@clear"
syn match squiffyPassage "\[[^\]]*\]"
syn match squiffySection "\[\[[^\]]*\]\]"
syn match squiffyHeader "\[\=\[[^\]]*\]\]\=:"

hi def link squiffyCommand Keyword
hi def link squiffyPassage Type
hi def link squiffySection Constant
hi def link squiffyHeader PreProc

let b:current_syntax = "squiffy"
