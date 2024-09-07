return {
  -- Mason configuration
  {
    "williamboman/mason-lspconfig.nvim",
    ensure_installed = {
      "clangd",
      "pyright",
      "jdtls",
    },
  },

  -- LSP's configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      lspconfig = require("lspconfig")

      -- C language
      lspconfig.clangd.setup({
        handlers = {
          ["textDocument/signatureHelp"] = function() end,
        },
      })

      -- Python
      lspconfig.pyright.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = { "python" },
      })
    end,
  },

  -- Noice configuration
  --{
  --  "folke/noice.nvim",
  --  require("noice").setup({
  --    routes = {
  --      {
  --        filter = {
  --          event = "lsp",
  --          kind = "progress",
  --          find = "jdtls",
  --        },
  --        opts = { skip = true },
  --      },
  --    },
  --  }),
  --},
}
