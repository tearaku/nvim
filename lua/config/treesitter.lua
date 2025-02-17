require("nvim-treesitter.configs").setup({
    -- Add languages to be installed here that you want installed for treesitter
    ensure_installed = { "rust", "javascript", "go", "python", "html", "lua", "vimdoc", "vim" },

    sync_install = false,
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },  
})
