"########################################
"Neovim vimspector configuration file
"
"author: LAMBIN Simon
"email: simo.lambin@gmail.com
"########################################


nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dw :call AddToWatch()<CR>
nnoremap <leader>dx :call vimspector#Reset()<CR>
nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>

nnoremap <S-h> :call vimspector#StepOut()<CR>
nnoremap <S-l> :call vimspector#StepInto()<CR>

nnoremap <leader>d_ :call vimspector#Restart()<CR>
nnoremap <leader>dn :call vimspector#Continue()<CR>

nnoremap <leader>db :call vimspector#ToggleBreakpoint()<CR>
nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
