"########################################
"Neovim init configuration file
"
"author: LAMBIN Simon
"email: simo.lambin@gmail.com
"########################################


" Set the leader key as space
let mapleader=" "

" Set basic settings
syntax on
set encoding=utf-8
set expandtab
set smartindent
set noerrorbells
set nu
set smartcase
set noswapfile
set nobackup
set undodir=$HOME/.config/nvim/.undodir
set undofile
set incsearch
set clipboard=unnamed
set backspace=indent,eol,start
set relativenumber
set mouse=a
set encoding=UTF-8
set termguicolors
set updatetime=500
set hidden

"Remap backspace in insert to remove word
inoremap <C-BS> <C-W>

"use the black hole register for delete and modify
nnoremap d "_d
vnoremap d "_d
nnoremap c "_c
vnoremap c "_c

" Move the screen instead of the cursor with the srollwheel
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" Keep visual mode when indenting lines
vnoremap < <gv
vnoremap > >gv

" Paste over text as many times as we want
xnoremap <expr> p 'pgv"'.v:register.'y`>'
xnoremap <expr> P 'Pgv"'.v:register.'y`>'

" Move lines around in visual mode
vnoremap <A-j> :m '>+1<CR>gv=gv
noremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-h> <gv
noremap <A-l> >gv

" Switch buffer
nnoremap gb :bn <CR>
nnoremap gB :bp <CR>

" Set extension aliases
autocmd BufNewFile,BufRead *.uproject set filetype=jsonc
autocmd BufNewFile,BufRead *.json set filetype=jsonc

" Set the tabsize
set shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType scss setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType sass setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType javascriptreact setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType typescriptreact setlocal shiftwidth=2 softtabstop=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 softtabstop=2 tabstop=2

if has("win32")
    " Set python install directory
    let g:python3_host_prog = $SCOOP . "/apps/python/current/python.exe"
    " Set the neovide font
    set guifont=CaskaydiaCove\ Nerd\ Font:h16
endif

let g:neovide_cursor_trail_length=0.0
let g:neovide_cursor_animation_length=0.02


" Load in all the plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'ahmedkhalf/project.nvim'

Plug 'Acedyn/comfortable-motion.vim'

Plug 'mbbill/undotree'

Plug 'nvim-lualine/lualine.nvim'

Plug 'romgrk/barbar.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'acksld/nvim-neoclip.lua'

Plug 'terrortylor/nvim-comment'

Plug 'kyazdani42/nvim-tree.lua'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'Chiel92/vim-autoformat'

Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

Plug 'windwp/nvim-autopairs'

call plug#end()


" Set the gruvbox theme
colorscheme gruvbox

" Source extra configs
source $HOME/.config/nvim/modules/comfortable-motion.vim
source $HOME/.config/nvim/modules/lsp.vim
source $HOME/.config/nvim/modules/fugitive.vim
source $HOME/.config/nvim/modules/autoformat.vim
source $HOME/.config/nvim/modules/minimap.vim

luafile $HOME/.config/nvim/modules/coq.lua
luafile $HOME/.config/nvim/modules/lsp-installer.lua
luafile $HOME/.config/nvim/modules/autopairs.lua
luafile $HOME/.config/nvim/modules/nvim-tree.lua
luafile $HOME/.config/nvim/modules/neoclip.lua
luafile $HOME/.config/nvim/modules/lualine.lua
luafile $HOME/.config/nvim/modules/comment.lua
luafile $HOME/.config/nvim/modules/project.lua
luafile $HOME/.config/nvim/modules/lsp-config.lua
luafile $HOME/.config/nvim/modules/telescope.lua
