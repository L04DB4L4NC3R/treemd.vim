function! MarkDownTree()
		%s/│//|%s/├──/*/|%s/└──/*/|%s/│//|%s/\%u00a0/ /g
endfunction

function! MarkDownTreeCmd(level) 
	echom a:level
	execute "r! tree -L ".a:level
	call MarkDownTree()<CR><CR>
endfunction

nnoremap tmd :call MarkDownTree()<CR><CR>
nnoremap tmt :<c-u>call MarkDownTreeCmd(v:count)<CR><CR>
