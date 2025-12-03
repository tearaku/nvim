local setkeymap = vim.keymap.set

-- === Misc ===
-- Edit and reload init.lua quickly
setkeymap("n", "<leader>ev", ":tabnew $MYVIMRC | tcd %:h<CR>", { silent = true })
setkeymap("n", "<leader>sv", ":silent update $MYVIMRC | source $MYVIMRC<CR>", { silent = true })

setkeymap("n", "<leader>ee", ":Ex<CR>", { silent = true, desc = "Open file explorer" })

setkeymap("n", "<leader>gg", "<cmd>Git<cr>", { noremap = true, silent = true })

setkeymap("n", "<leader>gh", "_", { noremap = true, silent = true })
setkeymap("n", "<leader>gl", "$", { noremap = true, silent = true })
setkeymap("n", "<leader>qq", "<cmd>q<cr>", { noremap = true, silent = true })
setkeymap("n", "<leader>qa", "<cmd>qa<cr>", { noremap = true, silent = true })
setkeymap("n", "<leader>w", "<cmd>w<cr>", { noremap = true, silent = true })

-- === Fzf keymaps ===
local fzf_lua = require('fzf-lua')
setkeymap("n", "<leader>ff", fzf_lua.files, { silent = true })
setkeymap("n", "<leader>fg", fzf_lua.live_grep, { silent = true })
setkeymap("n", "<leader>bl", fzf_lua.buffers, { silent = true })

-- === Lsp keymaps ===
local opts = { noremap=true, silent=true }
setkeymap('n', '[d', vim.diagnostic.goto_prev, opts)
setkeymap('n', ']d', vim.diagnostic.goto_next, opts)
setkeymap('n', '<space>ed', vim.diagnostic.setloclist, opts)
