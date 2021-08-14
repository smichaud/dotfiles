set timeoutlen=500
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent WhichKeyVisual '<Space>'<CR>
let g:which_key_sep = '➡'
let g:which_key_use_floating_win = 0
let g:which_key_map = {}
let g:which_key_map.t = {'name': '+Toggle'}
let g:which_key_map.a = {'name': '+Action'}
let g:which_key_map.x = {'name': '+Execute'}
let g:which_key_map.c = {'name': '+Replace (clipboard)'}
let g:which_key_map.c.i = {'name': '+Inner'}
let g:which_key_map.g = {'name': '+Go'}
let g:which_key_map.G = {'name': '+Git'}
let g:which_key_map.r = {'name': '+Refactor'}
let g:which_key_map.s = {'name': '+Show'}

let g:which_key_map.f = {'name': 'EasyMotion'}
let g:which_key_map.q = {'name': 'Quit buffer'}
let g:which_key_map.j = {'name': 'Previous buffer'}
let g:which_key_map.k = {'name': 'Next buffer'}

