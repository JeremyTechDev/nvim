" Toggle Comment with one extra space after the comment tag
let NERDSpaceDelims=1

" Ctrl+p Fuzzy find to ignore files ignored from git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

