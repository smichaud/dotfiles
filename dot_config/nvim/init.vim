"-------------------------------------------------------------
"- NOTE: use `:checkhealth` to make sure everything works !!!!
"-------------------------------------------------------------

call plug#begin()

""""""""Deliberation block""""""""""""""""
Plug 'kdheepak/lazygit.nvim'
" Plug 'tpope/vim-dotenv'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } " shortcut: <C-e>
Plug 'gennaro-tedesco/nvim-peekup'
""""""""""""""""""""""""""""""""""""""""""

Plug '~/Workspace/vim-custom' " No need for installation (i.e. won't be copied, won't appear in PlugInstall)

Plug 'mhinz/vim-startify'
Plug 'airblade/vim-rooter'
Plug 'kevinhwang91/rnvimr' " Ranger in vim
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kassio/neoterm'
Plug 'mbbill/undotree'

Plug 'hoob3rt/lualine.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'moll/vim-bbye' " Delete buffer without closing windows (leader+q)

Plug 'ishan9299/nvim-solarized-lua'
Plug 'rafamadriz/neon'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'https://git.sr.ht/~novakane/kosmikoa.nvim'
Plug 'maaslalani/nordbuddy'

Plug 'liuchengxu/vim-which-key' " Display available potential shortcuts 
Plug 'phaazon/hop.nvim' " Acejump
Plug 'jacquesbh/vim-showmarks' " In the gutter

Plug 'mhinz/vim-signify' " VCS (git) sign in gutter + navigate/show hunk
Plug 'f-person/git-blame.nvim' " Inline git blame
Plug 'tpope/vim-fugitive' " Git commands... 

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " Enable repeat with . for surround actions
Plug 'jiangmiao/auto-pairs' " replaced by coc-pairs
Plug 'Valloric/MatchTagAlways'
Plug 'AndrewRadev/tagalong.vim'
" Plug 'tpope/vim-commentary'
Plug 'b3nj5m1n/kommentary'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'
Plug 'stefandtw/quickfix-reflector.vim' " Apply changes directly from quickfix window
Plug 'jremmen/vim-ripgrep' "Better, faster grep, use :Rg

Plug 'michaelb/sniprun', {'do': 'bash install.sh 1', 'branch': 'dev'} " :SnipRun, :'<,'>SnipRun,:SnipInfo
Plug 'neovim/nvim-lspconfig' " you must install language server independently (e.g. yay -S typescript-language-server)
Plug 'kabouzeid/nvim-lspinstall' " :h
Plug 'glepnir/lspsaga.nvim' " LSP looks good (e.g. menu)
Plug 'hrsh7th/nvim-compe' " LSP completion
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }
Plug 'ray-x/lsp_signature.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlight, require :TSInstall python, typescript, tsx, json... 
Plug 'SirVer/ultisnips'
Plug 'onsails/lspkind-nvim' " Pictogram in completion menu
Plug 'mattn/efm-langserver' " For formatting

Plug 'mboughaba/i3config.vim' " i3 config syntax highlight
Plug 'RRethy/vim-illuminate' " highlight symbol under cursor
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'ap/vim-css-color'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'vim-test/vim-test'
Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-projectionist' " GoTo Test, must create .projectionist.json
Plug 'tpope/vim-dispatch' " Needed for projectionist + :Start command

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'kristijanhusak/vim-dadbod-ui'

call plug#end()

source ~/.config/nvim/config/general.vim
source ~/.config/nvim/config/toggle-qfix.vim
source ~/.config/nvim/config/rooter.vim
source ~/.config/nvim/config/startify.vim
source ~/.config/nvim/config/git-blame.vim
source ~/.config/nvim/config/neoterm.vim
luafile ~/.config/nvim/config/bufferline.lua
luafile ~/.config/nvim/config/lualine.lua
source ~/.config/nvim/config/colorsheme.vim
source ~/.config/nvim/config/hop.vim
luafile ~/.config/nvim/config/tree.lua
source ~/.config/nvim/config/which-key.vim
source ~/.config/nvim/config/quickfix-reflector.vim
source ~/.config/nvim/config/ripgrep.vim
luafile ~/.config/nvim/config/telescope.lua
source ~/.config/nvim/config/markdown.vim
luafile ~/.config/nvim/config/colorizer.lua
luafile ~/.config/nvim/config/illuminate.lua

luafile ~/.config/nvim/config/lsp/saga.lua
" luafile ~/.config/nvim/config/lsp/lspinstall.lua
luafile ~/.config/nvim/config/lsp/efm.lua
luafile ~/.config/nvim/config/lsp/misc.lua
luafile ~/.config/nvim/config/lsp/python.lua
luafile ~/.config/nvim/config/lsp/typescript.lua
luafile ~/.config/nvim/config/lsp/lua.lua
luafile ~/.config/nvim/config/lsp/signature.lua

luafile ~/.config/nvim/config/compe.lua
source ~/.config/nvim/config/ultisnip.vim

luafile ~/.config/nvim/config/sniprun.lua
source ~/.config/nvim/config/vim-test.vim
source ~/.config/nvim/config/db.vim

source ~/.config/nvim/config/firenvim.vim

source ~/.config/nvim/config/commands.vim
luafile ~/.config/nvim/config/keymap.lua
source ~/.config/nvim/config/keymap.vim


" Exploring lua
command! Scratch lua require'tools'.makeScratch()

highlight SignColumn ctermbg=none " Remove grey background for sign column

autocmd BufWritePost ~/.local/share/chezmoi/* ! chezmoi apply --source-path %
