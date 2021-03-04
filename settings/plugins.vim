if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

" Theme
Plug 'joshdick/onedark.vim'                                   " Theme
Plug 'ryanoasis/vim-devicons'                                 " Icons
Plug 'vim-airline/vim-airline'                                " Status bar theme config
Plug 'vim-airline/vim-airline-themes'                         " Status bar themes

" NERDTree
Plug 'scrooloose/nerdtree'                                    " File explorer
Plug 'Xuyuanp/nerdtree-git-plugin'                            " Git status on file explorer
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                " Extra highlight

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}               " VScode autocompetion like

" Search
Plug 'ctrlpvim/ctrlp.vim'                                     " Fuzzy find files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }           " Fuzzy find
Plug 'junegunn/fzf.vim'                                       " Fuzzy find

" Editor
Plug 'airblade/vim-gitgutter'                                 " Show git diff markers on file
Plug 'sheerun/vim-polyglot'                                   " Syntax and indentation support
Plug 'scrooloose/nerdcommenter'                               " Toggle comments
Plug 'HerringtonDarkholme/yats.vim'                           " TS Syntax
Plug 'mhinz/vim-startify'                                     " Start Screen

" Utils
Plug 'airblade/vim-rooter'                                    " Changes Vim working directory to project root

" :PlugInstall to install all plugings
call plug#end()

