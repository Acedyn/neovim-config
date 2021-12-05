"########################################
"Neovim confortable-motion configuration file
"
"author: LAMBIN Simon
"email: simo.lambin@gmail.com
"########################################


let g:comfortable_motion_no_default_key_mappings = 1

nnoremap <silent> <C-j> :call comfortable_motion#flick(150)<CR>
nnoremap <silent> <C-k> :call comfortable_motion#flick(-150)<CR>

let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
