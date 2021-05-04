" Jake Pauls
" https://jacobpauls.dev
" https://github.com/jacob-pauls

""
"" Plug
""
call plug#begin('~/.vim/plugged')

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" Tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Statusline
Plug 'vim-airline/vim-airline'

" Git
Plug 'tpope/vim-fugitive'

" Theming
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

call plug#end()

let mapleader = " "

""
"" Lua
""
luafile ~/.config/nvim/plugin/_compe.lua
luafile ~/.config/nvim/plugin/lsp/_python.lua
luafile ~/.config/nvim/plugin/lsp/_bash.lua

""
"" Utils
""
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup Edits
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
