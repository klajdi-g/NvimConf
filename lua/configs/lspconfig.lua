---@diagnostic disable-next-line: deprecated
local lspconfig = require "lspconfig" -- okay even in v0.11+
local defaults = require("nvchad.configs.lspconfig").defaults() or {}

local servers = {
  "cssls",
  "dockerls",
  "dotls",
  "efm",
  "elixirls",
  "fortls",
  "helm_ls",
  "html",
  "jdtls",
  "jsonls",
  "julials",
  "lemminx",
  "ltex",
  "lua_ls",
  "marksman",
  "vimls",
  "pyright",
  "vuels",
  "vtsls",
}

-- Setup all servers safely
for _, server in ipairs(servers) do
  if lspconfig[server] then
    lspconfig[server].setup(defaults)
  else
    vim.notify("Warning: LSP server not found: " .. server, vim.log.levels.WARN)
  end
end

-- Auto organize imports on save for TS/JS
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
  callback = function()
    vim.lsp.buf.code_action {
      context = { only = { "source.organizeImports" } },
      apply = true,
    }
  end,
})
