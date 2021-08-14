let g:startify_session_persistence = 1
let g:startify_session_autoload = 1
let g:startify_enable_special = 0
let g:startify_files_number = 4
let g:startify_session_delete_buffers = 1 
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] 

" Otherwise NVimTree break everything trying to load the tree buffer
let g:startify_session_before_save = [
            \ 'silent! NvimTreeClose'
            \ ]

let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'dir',       'header': ['   Current Directory Files '. getcwd()] },
      \ { 'type': 'files',     'header': ['   Files']            },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]


let g:startify_bookmarks = [
            \ { '.': '~/.config/nvim/init.vim' },
            \ { 's': '~/Workspace/vim-snippets/UltiSnips/typescript.snippets' },
            \ { 'l': '~/Workspace/linux-utils/' },
            \ { 'n': '~/Workspace/notes/job/log.md' },
            \ { 'a': '~/Workspace/pipe-inspection/frontend/analysis' },
            \ { 'b': '~/Workspace/pipe-inspection/backend/' },
            \ { 'c': '~/Workspace/pipe-inspection/frontend/libs/client' },
            \ { 'x': '~/Workspace/pipe-inspection/' },
            \ ]

