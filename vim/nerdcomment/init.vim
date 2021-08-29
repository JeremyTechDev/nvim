" >> setup nerdcomment key bindings
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1

xnoremap <Leader>/ <cmd>call NERDComment('n', 'toggle')<CR>
nnoremap <Leader>/ <cmd>call NERDComment('n', 'toggle')<CR>

