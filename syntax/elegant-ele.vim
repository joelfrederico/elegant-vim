" syntax/elegant-ele.vim
"
" Main syntax file

if exists("b:current_syntax")
  finish
endif
set foldmethod=syntax

syn match Value		/\(=\s*\)\@<=\(\w\|\.\|+\|-\|"\|%\|\/\|\*\)*/
syn match Array         /\(=\s*\)\@<={.*}/
syn match Polish	/\(=\s*\)\@<="(\(\A\|e\|E\)\{-})"/
syn match Key		/\w\+\(\[\d\]\)\=\(\s*=\)\@=/
syn match Section	/&.*/
syn match myComment	/!.*\n/
syn region myFold start="^\s*!*\s*&\(end\)\@!" end="^\s*!*\s*&end" transparent keepend fold contains=ALL

hi link myComment 	Comment
hi link Polish		String
hi link Value		Constant
hi link Array		Constant
hi link Key		Identifier
hi link Section		Statement
hi link Variable	Identifier
" hi link myFold Comment

" syn sync match test grouphere NONE "&"
" syn sync match test grouphere myFold "^&\(end\)\@!"
syn sync match test grouphere myFold "$\n\(&\)\@="
" syn sync linecont "!"
syn sync fromstart
