vim.opt.termguicolors = true

if vim.fn.has("win32") then
  vim.opt.shell = "pwsh"
  local ori_fnameescape = vim.fn.fnameescape
  ---@diagnostic disable-next-line: duplicate-set-field
  vim.fn.fnameescape = function(...)
    local result = ori_fnameescape(...)
    return result:gsub("\\", "/")
  end
end

require("config.lazy")

vim.cmd.colorscheme "vague"
-- vim.cmd.colorscheme "rose-pine"

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.backspace = { "start", "eol", "indent" }

vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.scrolloff = 8
vim.opt.ignorecase = true

vim.opt.wildignore:append("{*/node_modules/*}")
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.opt.wrap = false
vim.opt.updatetime = 50
vim.opt.clipboard = "unnamedplus"

-- key binds
vim.keymap.set("n", "x", '"_x')

vim.keymap.set('n', '<space>grn', vim.lsp.buf.rename)
vim.keymap.set('n', '<space>gra', vim.lsp.buf.code_action)
vim.keymap.set('n', '<space>grr', vim.lsp.buf.references)

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

vim.keymap.set("n", "-", "<cmd>Oil<CR>")
