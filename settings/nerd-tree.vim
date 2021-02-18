" Defaults
let g:NERDTreeIgnore = ['^node_modules$']
let NERDTreeShowHidden = 1
let g:NERDTreeGitStatusWithFlags = 1

" Open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Toggle NERDTree with Ctrl + n
nmap <C-n> :NERDTreeToggle<CR>

" Toggle comment with :++ (set to Command + / with iTerm)
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" Sync open file with NERDTree
" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind if NERDTree is active, current window
" contains a modifiable file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

