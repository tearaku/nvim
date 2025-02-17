local fzf = require('fzf-lua')
fzf.setup({
    {'skim'},
    fzf_bin = 'sk',
    -- Profile options: https://github.com/ibhagwan/fzf-lua/tree/main/lua/fzf-lua/profiles
    winopts = { preview = { default = "bat" } },
    manpages = { previewer = "man_native" },
    helptags = { previewer = "help_native" },
    lsp = { code_actions = { previewer = "codeaction_native" } },
    tags = { previewer = "bat" },
    btags = { previewer = "bat" },
})
