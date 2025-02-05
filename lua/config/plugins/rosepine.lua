return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        --variant = "moon",
        styles = {
          italic = false,
        },

        palette = {
          main = {
            --base = "#000000",
          },
          moon = {
            base = "#000000",
          },
        },
      })
    end
  },
}
