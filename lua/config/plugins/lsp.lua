return {
  {
	"neovim/nvim-lspconfig",
	config = function()
	  require("lspconfig").ols.setup {
		init_options = {
		  collections = {
			{ name = "core", path = vim.fn.expand('$HOME/Documents/Github/Odin/core') },
			{ name = "vendor", path = vim.fn.expand('$HOME/Documents/Github/Odin/vendor') },
			{ name = "shared", path = vim.fn.expand('$HOME/Documents/Github/Odin') }
		  },
		},
	  }
	  require("lspconfig").lua_ls.setup {}
	end
  }
}
