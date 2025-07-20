local options = {
    formatters_by_ft = {
    lua = { "stylua" },
    php = { "phpcsfixer" }, -- or any php formatter you have installed via mason
    css = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    vue = { "prettier" },
    html = { "htmlbeautifier" },
    json = { "prettier" },
    nginx = { "nginx_config_formatter" },
    -- add more as needed
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
