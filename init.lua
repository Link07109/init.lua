vim.opt.termguicolors = true

local ori_fnameescape = vim.fn.fnameescape
---@diagnostic disable-next-line: duplicate-set-field
vim.fn.fnameescape = function (...)
  local result = ori_fnameescape(...)
  return result:gsub("\\", "/")
end

require("config.lazy")
vim.cmd.colorscheme "vague"
--rose-pine
vim.opt.shell = "powershell"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.updatetime = 50
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set('n', 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

vim.keymap.set("n", "-", "<cmd>Oil<CR>")
