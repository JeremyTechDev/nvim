" let g:startify_custom_header = [
        " \ '                      v  ~.      v',
        " \ '             v           /|',
        " \ '                        / |          v',
        " \ '                 v     /__|__',
        " \ '                     \--------/',
        " \ "~~~~~~~~~~~~~~~~~~~~~~`~~~~~~'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~",
        " \ '   Wish you were here?... (I know you do)',
        " \]

let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ {'a': '.'},
            \ { 'v': '~/.config/nvim' },
            \ { 't': '~/dev/tsseract' },
            \ { 'n': '~/dev/nexstar-frontend' },
            \ { 'b': '~/dev/nexstar-backend-middleware' },
            \ ]

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
