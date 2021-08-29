""" Initilization File 🚀

if &compatible
  set nocompatible
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set buftype=nofile | read ++edit # | Od_ | diffthis
    \ | wincmd p | diffthis
endif

" Source settings
so ~/.config/nvim/vim/plugins.vim
so ~/.config/nvim/vim/theme.vim
so ~/.config/nvim/vim/settings.vim

" Source plugings settings
so ~/.config/nvim/vim/telescope/init.vim
so ~/.config/nvim/vim/nerdcomment/init.vim
so ~/.config/nvim/vim/lsp/init.vim

" Source lua settings
lua <<EOF
require("lsp")
require("treesitter")
require("statusbar")
require("completion")
EOF
