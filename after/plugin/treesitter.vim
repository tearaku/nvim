lua <<EOF

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = function(lang, bufnr) -- Diable treesitter highlighting in large files
            return vim.api.nvim_buf_line_count(bufnr) > 1000
        end,
    },
    incremental_selection = {
        enable = true,
    },
}

EOF
