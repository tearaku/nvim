local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    javascript = { "prettier" },
    json = { "prettier" },
  },
  default_format_opts = {
    lsp_format = "fallback",
  },
})
