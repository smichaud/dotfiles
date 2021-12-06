" LSP
nnoremap <silent> <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>gD <cmd>lua vim.lsp.buf.declaration()<CR>

" Saga
nnoremap <silent> <leader>sa <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent> <leader>sa <C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent> <leader>sh <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
nnoremap <silent> <leader>ss <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
nnoremap <silent> <leader>sd <cmd>lua require('lspsaga.provider').preview_definition()<CR>
nnoremap <silent> <leader>sr <cmd>lua require('lspsaga.provider').lsp_finder()<CR>

nnoremap <silent> <leader>se <cmd>lua require('lspsaga.diagnostic').show_line_diagnostics()<CR>
nnoremap <silent> [e <cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_prev()<CR>
nnoremap <silent> ]e <cmd>lua require('lspsaga.diagnostic').lsp_jump_diagnostic_next()<CR>

nnoremap <silent> <leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent> <leader>rf <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <leader>ri :OrganizeImports<CR>

" LazyGit
nnoremap <leader>og :LazyGit<CR>

" Fugitive
nnoremap <leader><leader>g :G<CR>
nnoremap <leader><leader>fa :Git fetch --all 
nnoremap <leader><leader>mom :Git merge origin/master 
nnoremap <leader><leader>cam :Git commit -am 
nnoremap <leader><leader>co :Git checkout 
nnoremap <leader><leader>cb :Git checkout -b
nnoremap <leader><leader>p :Git push
nnoremap <leader><leader>z :Git stash

nnoremap <leader><leader>h :diffget //3<CR>
nnoremap <leader><leader>l :diffget //2<CR>


" Vim-test
nnoremap <leader>xtx :TestSuite<CR>
nnoremap <leader>xtf :TestFile<CR>
nnoremap <leader>xtt :TestNearest<CR>
nnoremap <leader>xtn :TestNearest<CR>
" Vim-projectionist ... commented doing my own
" nnoremap <leader>gt :A<CR> 
" Ultest
" nnoremap <leader>tt :UltestSummary<CR>
" nnoremap <leader>xtn :UltestNearest<CR>
" nnoremap <leader>xtf :Ultest<CR>
" nnoremap <leader>st :UltestOutput<CR>
" nmap ]t <Plug>(ultest-next-fail)
" nmap [t <Plug>(ultest-prev-fail)

" Signify
nmap [h <plug>(signify-previous-hunk)
nmap ]h <plug>(signify-next-hunk)
nnoremap <leader>sg :SignifyHunkDiff<CR>
nnoremap <leader>tgs :SignifyToggle<CR>
nnoremap <leader>tgh :SignifyToggleHighlight<CR>
" F-person/git-blame
nnoremap <leader>tgb :GitBlameToggle<CR>

" Telescope
map <C-p> <cmd>Telescope find_files find_command=rg,-L,--hidden,--files,--ignore-file,/home/smichaud/Workspace/linux-utils/rc/.ignore<CR>
nnoremap <leader>p/ :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>pr :lua require('telescope.builtin').lsp_references()<CR>
nnoremap <leader>p* :lua require('telescope.builtin').grep_string()<CR>
nnoremap <leader>pgb :lua require('telescope.builtin').git_branches()<CR>
nnoremap <leader>pgc :lua require('telescope.builtin').git_commits()<CR>
nnoremap <leader>pgs :lua require('telescope.builtin').git_commits()<CR>
nnoremap <leader>pgz :lua require('telescope.builtin').git_stash()<CR>
nnoremap <leader>pc :lua require("telescope.builtin").find_files({search_dirs = {"~/.local/share/chezmoi"}, hidden = true})<CR>
nnoremap <leader>ps :lua require("telescope.builtin").find_files({search_dirs = {"~/.local/share/chezmoi/dot_config/nvim/UltiSnips/"}, hidden = true})<CR>

" Rnvimr (ranger)
nnoremap <leader>or :RnvimrToggle<CR>
nnoremap <leader>tu :UndotreeToggle<CR>

" neoterm
:tnoremap <C-w> <C-\><C-n><C-w>
:tnoremap <C-n> <C-\><C-n>
:tnoremap <M-c> <C-\><C-n>:Ttoggle<CR>
nnoremap <M-c> :Ttoggle<CR>

" NvimTree
nnoremap <leader>te :NvimTreeToggle<CR>
nnoremap <leader>ge :NvimTreeFindFile<CR>


" Ultisnip
nmap <leader>os :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger = "<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" dadbod, dadbod-completion, dadbod-ui
nnoremap <leader>td :DBUIToggle<CR>
" nmap <c-g> <Plug>(DBUI_JumpToForeignKey)

" Easymotion
nmap <leader>F :HopPattern<CR>
nmap <leader>f :HopWord<CR>
" nmap <c-g> <Plug>(easymotion-bd-w)

" Ripgrep / Search and replace
nnoremap <leader>rr :%s/\<<C-r><C-w>\>/<C-r><C-w>/gc <bar> update<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap <leader>/ :Rg --smart-case --hidden 
nnoremap <leader>? :Rg --fixed-strings 
nnoremap <leader>* :Rg<CR>

" vim-commentary
nmap <C-_> gcc
vmap <C-_> gc

" Sorting
vmap <leader>rs :sort i<CR>
vmap <leader>rjs :!jq -S '.' <<< <C-R>0<CR>

" bbye (close buffer, not window)
nnoremap <leader>q :Bdelete<CR>

" MarkdownPreview
nnoremap <leader>xm :MarkdownPreview<CR>

" General/Builtin
nnoremap <leader>; A;<Esc>
noremap <leader>ciw viwpgvy

nnoremap <leader>t<Space> :set list!<CR>
nnoremap <leader>tl :set spell!<CR>
nnoremap <leader>tn :set relativenumber!<CR><Bar>:set number!<CR>
nnoremap <leader>tw :set wrap!<CR>
nnoremap <leader>th :nohlsearch<CR>
nnoremap <leader>tm :delmarks! <bar> delmarks A-Z0-9<CR>
nnoremap <silent> \ :QFix<CR>
nnoremap <leader>tq :QFix<CR>
" nnoremap <leader>ov :! code .<CR> " Open in VSCode

nnoremap <leader>t. :vs ~/.config/nvim/init.vim<CR>
nnoremap <leader>. :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>dv <C-w>v " Split vertical
nnoremap <leader>dh <C-w>s " Split horizontal
nnoremap - <C-W>- " Resize vertical
nnoremap + <C-W>+ " Resize vertical

nnoremap H <C-u> " Go up the page
nnoremap L <C-d> " Go down the page

nnoremap gh <C-o> " Go back
nnoremap gl <C-i> " Go forward

nn <c-up> <c-a> " Increase number under cursor
nn <c-down> <c-x> " Decrease number under cursor

nnoremap J mzJ`zh " Keep the cursor at the same place when you join lines
nnoremap Y y$ " Y behave like other capital letters...
" <c-g>u will same an undo break point
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap { {<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap } }<c-g>u
inoremap ( (<c-g>u
inoremap ) (<c-g>u

" Using J and K to move the text up and down, adjust indent
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv
inoremap <S-Down> <esc>:m .+1<CR>==
inoremap <S-Up> <esc>:m .-2<CR>==
nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-Up> :m .-2<CR>==
