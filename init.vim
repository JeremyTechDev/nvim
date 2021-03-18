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
so ~/.config/nvim/settings/plugins.vim
so ~/.config/nvim/settings/defaults.vim
so ~/.config/nvim/settings/start-screen.vim
so ~/.config/nvim/settings/theme.vim
so ~/.config/nvim/settings/airline.vim
so ~/.config/nvim/settings/coc-defaults.vim
so ~/.config/nvim/settings/utils.vim
so ~/.config/nvim/settings/BufOnly.vim
so ~/.config/nvim/settings/emmet.vim
so ~/.config/nvim/settings/git-signify.vim
so ~/.config/nvim/settings/mappings.vim
so ~/.config/nvim/settings/telescope.vim
