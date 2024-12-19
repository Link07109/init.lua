return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
	require("lualine").setup({
	  options = {
		icons_enabled = true,
		theme = "iceberg",
		component_separators = "",
		section_separators = "",
	  },
	  sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {'encoding'},
		lualine_z = {'filetype'},
	  },
	  inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {},
	  },
	  tabline = {},
	  winbar = {},
	  inactive_winbar = {},
	  extensions = {}
	})
  end,
}
