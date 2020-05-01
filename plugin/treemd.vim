function! MarkDownTree()
		%s/│//|%s/├──/*/|%s/└──/*/|%s/│//|%s/\%u00a0/ /g

		" To convert md list to md reference list
		%s/\* \(.*\)$/\* [\1](\1)/g
endfunction

function! MarkDownTreeCmd(level) 
	echom a:level
	execute "r! tree -L ".a:level
	call MarkDownTree()<CR><CR>
endfunction

nnoremap tmd :call MarkDownTree()<CR><CR>
nnoremap tmt :<c-u>call MarkDownTreeCmd(v:count)<CR><CR>
