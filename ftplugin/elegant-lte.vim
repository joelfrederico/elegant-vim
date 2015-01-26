" ftplugin/elegant-lte.vim
"
" Set things like tabstop, etc.
"
function! EnhCommentifyCallback(ft)
	if a:ft == 'elegant-lte'
		let b:ECcommentOpen = '!'
		let b:ECcommentClose = ''
	endif
endfunction
let g:EnhCommentifyCallbackExists = 'Yes'
