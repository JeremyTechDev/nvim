" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Ctrl+p Fuzzy find to ignore files ignored from git
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

