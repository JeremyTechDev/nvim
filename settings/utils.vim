" Toggle Comment with one extra space after the comment tag
let NERDSpaceDelims=1

" Ctrl+p Fuzzy find to ignore files ignored from git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Move lines up and down
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv
