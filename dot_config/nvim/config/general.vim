let mapleader="\<Space>"

set encoding=utf-8
set fileencoding=utf-8

" Use OS clipboard
set clipboard=unnamedplus

"set notimeout "To prevent the timeout on the leader key, commented to use WhichKey
set ttimeout "To prevent the timeout on the leader key
set title
set mouse=a

set ignorecase
set smartcase
set hlsearch
set incsearch

set relativenumber
set nu
set ruler

set spelllang=en_us
set listchars=tab:▷-,trail:▫,eol:¬

set history=500
set showcmd
set showmode

set backspace=indent,eol,start
set smartindent
set tabstop=4 shiftwidth=4 expandtab
set hidden " Can switch buffer without saving

" Keep current line centered
set scrolloff=999

set wildmenu
"set wildmode=longest:full,full

set splitbelow
set splitright

set undodir=~/.config/nvim/undodir
set undofile
if exists('g:started_by_firenvim')
  set laststatus=0
else
  set laststatus=2
endif
set colorcolumn=89

" Used by nerdtree and vimgrep
set wildignore+=
            \.idea*,
            \.vscode*,
            \.vim*,
            \*.git,
            \.venv*,
            \*.pytest_cache*,
            \*__pycache__,
            \*.egg-info*,
            \*.pyc,
            \*swp,
            \*.DS_Store,
            \*node_modules*

" Fuzzy finder: ignore stuff that can't be opened, and generated files
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"

" TODO: Check if I still need that... I think it was for coc?
set nobackup
set nowritebackup
set cmdheight=1 "2 ?
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"""""""""""""""""""""""""""""""""""""
" Allow plugins
syntax on
" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd QuickFixCmdPost *grep* botright copen

" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.launch  set syntax=xml
autocmd BufNewFile,BufRead dot_zshrc  set syntax=zsh
autocmd BufNewFile,BufRead dot_bashrc  set syntax=sh
autocmd BufNewFile,BufRead dot_profile  set syntax=sh
autocmd BufNewFile,BufRead dot_pythonrc  set syntax=python
autocmd BufNewFile,BufRead dot_tmux.conf  set syntax=tmux
autocmd BufNewFile,BufRead dot_gitconfig  set syntax=gitconfig
autocmd BufNewFile,BufRead dot_Xresources  set syntax=xdefaults

" Update files automatically when changed externally
set autoread
au CursorHold,CursorHoldI * checktime

autocmd FileType neoterm set nobuflisted
autocmd FileType qf set nobuflisted

highlight HighlightedyankRegion cterm=reverse gui=reverse
" Briefly highlight copied
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=100 }
augroup END
