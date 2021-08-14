let test#python#runner = 'pytest'

" When using Ultest, you need these to prevent infinite loops
" let test#javascript#jest#options = "--watchAll=false"
" let test#javascriptreact#jest#options = "--watchAll=false"
" let test#typescript#jest#options = "--watchAll=false"
" let test#typescriptreact#jest#options = "--watchAll=false"

" let test#javascript#reactscripts#options = "--watchAll=false"
" let test#javascriptreact#reactscripts#options = "--watchAll=false"
" let test#typescript#reactscripts#options = "--watchAll=false"
" let test#typescriptreact#reactscripts#options = "--watchAll=false"

" let test#strategy = "neoterm"
let test#strategy = "neovim"
let test#neovim#term_position = "vert"
let g:test#preserve_screen = 0
" .projectionist.json example:
"{
"    "*.tsx": {
"        "alternate": "{dirname}/tests/{basename}.test.tsx"
"    },
"    "src/**/tests/*.test.tsx": {
"        "alternate": "src/{dirname}/{basename}.tsx"
"    }
"}
""""""""""""
"  "**/test/test_*.py": {
"    "alternate": "{dirname}/{basename}.py"
"  },
"  "*.py": {
"    "alternate": "{dirname}/test/test_{basename}.py"
"  }
"}

" Ultest
" use :help ultest-command
let g:ultest_output_on_line = 0 " I guess I prefer to trigger it manually
let g:ultest_max_threads = 4
let test#python#pytest#options = "--color=yes"
let test#javascript#jest#options = "--color=always"

" Could automatically run test when edited:
" augroup UltestRunner
"     au!
"     au BufWritePost * UltestNearest
" augroup END
