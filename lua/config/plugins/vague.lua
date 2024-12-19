return {
  {
    "vague2k/vague.nvim",
    name = "vague",
    config = function()
      require("vague").setup({
        transparent = false,
        style = {
          boolean = "none",
          number = "none",
          float = "none",
          error = "none",
          comments = "none",
          conditionals = "none",
          functions = "none",
          headings = "bold",
          operators = "none",
          strings = "none",
          variables = "none",

          keywords = "none",
          keyword_return = "none",
          keywords_loop = "none",
          keywords_label = "none",
          keywords_exception = "none",

          builtin_constants = "none",
          builtin_functions = "none",
          builtin_types = "none",
          builtin_variables = "none",
        },
        colors = {
          bg = "#0c0b0f",
          func = "#bc96b0",
          keyword = "#787bab",
          -- string = "#d4bd98",
          string = "#8a739a",
          number = "#8f729e",
          -- type = "#dcaed7",
        },
      })
    end,
  },
  {
    "RRethy/base16-nvim",
  },
}
