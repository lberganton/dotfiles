return {
  -- LSP's configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").clangd.setup({
        handlers = {
          ["textDocument/signatureHelp"] = function() end,
        },
      })
    end,
  },

  -- Noice configuration
  {
    "folke/noice.nvim",
    require("noice").setup({
      routes = {
        {
          filter = {
            event = "lsp",
            kind = "progress",
            find = "jdtls",
          },
          opts = { skip = true },
        },
      },
    }),
  },
}
