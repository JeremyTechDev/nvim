if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'joshdick/onedark.vim'   " Theme
Plug 'itchyny/lightline.vim'  " Status bar theme
Plug 'ryanoasis/vim-devicons' " Icons

" NERDTree
Plug 'scrooloose/nerdtree'                      " File explorer
Plug 'Xuyuanp/nerdtree-git-plugin'              " Git status on file explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Extra highlight

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}   " VScode autocompetion like

" Search
Plug 'ctrlpvim/ctrlp.vim'                             " Fuzzy find files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   " Fuzzy find
Plug 'junegunn/fzf.vim'                               " Fuzzy find

" Movement
Plug 'christoomey/vim-tmux-navigator'   " Move between pannels

" Editor
Plug 'airblade/vim-gitgutter'        " Show git diff markers on file
Plug 'sheerun/vim-polyglot'          " Syntax and indentation support
Plug 'scrooloose/nerdcommenter'      " Toggle comments
Plug 'HerringtonDarkholme/yats.vim'  " TS Syntax

" Utils
Plug 'airblade/vim-rooter'  " Changes Vim working directory to project root

" :PlugInstall to install all plugings
call plug#end()

