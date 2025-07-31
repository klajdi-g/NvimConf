local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    php = { "phpcsfixer" },
    css = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    vue = { "prettier" },
    html = { "htmlbeautifier" },
    json = { "prettier" },
    nginx = { "nginx_config_formatter" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
