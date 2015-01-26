" syntax/elegant-ele.vim
"
" Main syntax file

if exists("b:current_syntax")
  finish
endif

" syn region line start=/\(LINE\s*=\s*\)\@<=(/ end=/)/ contains=CONTAINED
" syn match line		/(\(.\|\n\)\{-})/ contains=CONTAINED
syn match Bend		/B[1-3]\(L\|R\)\=EA/
syn match Bend		/WIG\w*/
syn match Bend		/B\d\{7}/
syn match Chrg		/\((\)\@<=C\w*/
syn match Corr		/\(X\|Y\)\{1}C\w*/
syn match Corr		/\(X\|Y\)\d\{6}T/
syn match Drif		/CSRD\d\{4}/
syn match Drif		/DRI\d\{5}/
syn match Quad		/\( \|,\)\@<=Q\w*/
syn match Sext		/\( \|,\)\@<=S\dE/
syn match Sext		/S\d\{6}T/
syn match Moni		/\( \|,\)\@<=M\d\w\+/
syn match Moni		/\( \|,\)\@<=CB\d\(L\|R\)E/
syn match Moni		/\( \|,\)\@<=C\u\d\{6}/
syn match Moni		/\( \|,\)\@<=\(T\|P\)\d\{6}T/
syn match Moni		/\( \|,\)\@<=BS\d\{6}/
syn match Moni		/\( \|,\)\@<=PD\d\{6}/
syn match Moni		/R\d\{6}T/
syn match Moni		/W\d\{6}T/
syn match Moni		/STG\w*/

" syn match Value		/\(=\s*\)\@<=\(\(+\|-\)\=\d\+\.\=\d*\(E\(+\|-\)\=\d*\)\=\)/
syn match Value		/\(=\s*\)\@<=\(\w\|\.\|+\|-\|"\|%\)*/
syn match Polish	/"[0-9\.\*\/\+\-\ eE]\{-}"/
" syn match Path		/"\([\/]\|\w\)\+\.\w\+"/
" syn match Key		/\(\(\a\|\d\|_\)\+\)\(\s*=\)\@=/
syn match Key		/\w\{-}\(\s*=\)\@=/
" syn match Command	/\s*[a-zA-Z0-9_\"]*\s*:/
syn match Command	/\(\s*\)\@<=\(\w\|_\|"\)*\s*:/
syn match RPN		/^%.*\n/
syn match Eltype	/\(:\s*\)\@<=\w*/

syn match myComment	/!.*\n/

hi Eltype		guifg=DarkGreen ctermfg=DarkGreen
hi link myComment 	Comment
hi link Command		Statement
hi link Polish		String
hi link RPN		String
hi link Value		Constant
" hi link Path		Directory
hi link Key		Identifier
" hi line guifg=Red ctermfg=Red
hi Bend guifg=Blue ctermfg=Blue
hi Drif guifg=DarkGray ctermfg=DarkGray cterm=underline
hi Quad guifg=Red ctermfg=Red
hi Sext guifg=DarkGreen ctermfg=Green
hi Corr guifg=DarkBlue gui=italic ctermfg=DarkBlue
hi Moni guifg=Gray gui=italic ctermfg=Gray
hi Chrg guifg=Cyan ctermfg=Cyan
