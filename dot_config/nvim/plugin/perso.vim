fun! ToggleCase()
    " To reload the plugin during development
    lua for k in pairs(package.loaded) do if k:match("perso") then package.loaded[k] = nil end end
    lua require("perso").toggle_case()
endfun

fun! GoToTest()
    " To reload the plugin during development
    lua for k in pairs(package.loaded) do if k:match("perso") then package.loaded[k] = nil end end
    lua require("perso").go_to_test()
endfun

fun! Proto()
    " To reload the plugin during development
    lua for k in pairs(package.loaded) do if k:match("perso") then package.loaded[k] = nil end end
    lua require("perso").proto()
endfun

" Template if you want some auto command
augroup Proto
    autocmd!
    " autocmd VimResized * :lua require("perso").on_resize()
augroup END
""" THE CLEAN WAY """
" if exists('g:loaded_perso') | finish | endif

" let s:save_cpo = &cpo
" set cpo&vim

" command! Perso lua require'perso'.perso()
" command! P lua require'perso'.perso()

" let &cpo = s:save_cpo
" unlet s:save_cpo

" let g:loaded_perso = 1
