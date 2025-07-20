local lspconfig = require("lspconfig")
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
  "ts_ls",
  "vimls",
  -- 'laravel_ls',
  'pyright',
  "vuels",
}

for _, server in ipairs(servers) do
  if lspconfig[server] then
    lspconfig[server].setup(defaults)
  else
    print("Warning: LSP server not found in lspconfig: " .. server)
  end
end
