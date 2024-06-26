" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" fzf for vim
Plug '/opt/homebrew/opt/fzf'
Plug 'junegunn/fzf.vim'

" Color scheme
Plug 'lifepillar/vim-gruvbox8'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'

" LSP things
Plug 'neovim/nvim-lspconfig'

" nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" LuaSnip
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Java LSP
Plug 'mfussenegger/nvim-jdtls'

" leap
Plug 'tpope/vim-repeat'
Plug 'ggandor/leap.nvim'
call plug#end()

let mapleader = " "
" Edit and reload init.vim quickly
nnoremap <silent> <leader>ev :<C-U>tabnew $MYVIMRC <bar> tcd %:h<cr>
nnoremap <silent> <leader>sv :<C-U>silent update $MYVIMRC <bar> source $MYVIMRC<cr>
" Let fzf use rg, to exclude certain folders from search (ex: node_modules)
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden'
" Fuzzy finding keymapping
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>fg :Rg<CR>
nnoremap <leader>bl :Buffer<CR>
" Closing all buffers except current one
command! BufOnly silent execute "%bd|e#|bd#"

" Initializing leap.nvim
lua require('leap').add_default_mappings()
