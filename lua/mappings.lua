require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local last_block_line = 0

vim.keymap.set("n", "<leader>vo", function()
  local current_line = vim.fn.line "."
  local total_lines = vim.fn.line "$"

  local search_start = math.max(last_block_line + 1, current_line)
  vim.fn.cursor(search_start, 1)

  local found = vim.fn.search("{", "W")
  if found == 0 then
    print "No more blocks found"
    return
  end

  vim.cmd "normal! V%"

  last_block_line = vim.fn.line "."
end, { desc = "Select next { ... } block" })

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action (Quick Fix)" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<leader>t", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Exit terminal mode" })
map("n", "<leader>f", "<cmd> Telescope find_files<cr>", { desc = "find files" })
map("n", "<leader>ff", "no_op", { desc = "Removed space+ff" })
map("n", "<leader>co}", ":%s#//.*##g", { desc = "Removed comments from the file" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
