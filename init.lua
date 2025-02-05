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
vim.opt.shell = "zsh"

require("config.lazy")

--vim.cmd.colorscheme "vague"
vim.cmd.colorscheme "rose-pine"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
-- vim.opt.backspace = { "start", "eol", "indent" }

vim.opt.hlsearch = false -- true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.ignorecase = true

--vim.opt.guicursor = ""
vim.opt.wrap = false
vim.opt.updatetime = 50
vim.opt.clipboard = "unnamedplus"

vim.opt.wildignore:append("{*/node_modules/*}")
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"


-- key binds
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set('n', '<leader>grn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>gra', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>grr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)

-- quickfix navi
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>zz")
-- prime
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "-", "<cmd>Oil<CR>")

-- keeps cursor in middle of screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
