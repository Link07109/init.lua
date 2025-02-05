return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").lua_ls.setup { capabilities = capabilities }
      require("lspconfig").ols.setup { capabilities = capabilities }

      require("lspconfig").clangd.setup({
        filetypes = { "c", "cpp", "cc", "mpp", "ixx", "objc", "objcpp", "cuda" },
        cmd = {
          "clangd", --vim.fn.glob(require("mason_registry").get_package("clangd"):get_install_path() .. "/clangd_*") .. "/bin/clangd",
          --"--query-driver=/**/*",
          "--all-scopes-completion",
          "--background-index",
          "--clang-tidy",
          "--compile_args_from=filesystem",
          "--completion-parse=always",
          "--completion-style=bundled",
          "--cross-file-rename",
          "--debug-origin",
          "--enable-config",
          "--fallback-style=Qt",
          "--folding-ranges",
          "--function-arg-placeholders",
          "--header-insertion=iwyu",
          "--pch-storage=memory",
          "--suggest-missing-includes",
          "--j=4",
          "--log=error",
          "--offset-encoding=utf-16",
        },
        single_file_support = true,
        capabilities = capabilities,
      })

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          if vim.bo.filetype == "lua" then
            --if client.supports_method('textDocument/formatting') then
            vim.api.nvim_create_autocmd('BufWritePre', {
              buffer = args.buf,
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
              end,
            })
          end
        end,
      })
    end,
  }
}
