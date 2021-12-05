"########################################
"Neovim autoformat configuration file
"
"author: LAMBIN Simon
"email: simo.lambin@gmail.com
"########################################

let g:formatters_python = ["black"]
let g:formatters_javascript = ["prettier"]

au BufWrite * :Autoformat
noremap <leader>aa :Autoformat<CR>
