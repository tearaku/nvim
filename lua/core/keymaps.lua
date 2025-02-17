local setkeymap = vim.keymap.set

-- === Misc ===
-- Edit and reload init.lua quickly
setkeymap("n", "<leader>ev", ":tabnew $MYVIMRC | tcd %:h<CR>", { silent = true })
setkeymap("n", "<leader>sv", ":silent update $MYVIMRC | source $MYVIMRC<CR>", { silent = true })
-- Quickly get to file explorer (used to be just `:E`)
setkeymap("n", "<leader>ee", ":Ex<CR>", { silent = true })

-- === Fzf keymaps ===
local fzf_lua = require('fzf-lua')
setkeymap("n", "<leader>ff", fzf_lua.files, { silent = true })
setkeymap("n", "<leader>fg", fzf_lua.live_grep, { silent = true })
setkeymap("n", "<leader>bl", fzf_lua.buffers, { silent = true })

-- === Lsp keymaps ===
local opts = { noremap=true, silent=true }
setkeymap('n', '<space>e', vim.diagnostic.open_float, opts)
setkeymap('n', '[d', vim.diagnostic.goto_prev, opts)
setkeymap('n', ']d', vim.diagnostic.goto_next, opts)
setkeymap('n', '<space>q', vim.diagnostic.setloclist, opts)
