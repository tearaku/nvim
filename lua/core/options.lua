local opts = {
    nu = true,
    hidden = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    smartindent = true,
    incsearch = true,
    scrolloff = 8,
    signcolumn = "yes",
    colorcolumn = "80",
    termguicolors = true,
    guicursor = "",
    swapfile = false,
    mouse = "",
    cursorline = true,
}

for opt, val in pairs(opts) do
    vim.o[opt] = val
end
