return {
  {
    "folke/noice.nvim",
    opts = {
      -- Setup to not show commands in a popup window.
      cmdline = {
        view = "cmdline",
      },

      lsp = {
        hover = {
          -- Set not show a message if hover is not available.
          -- Useful when multiple LSP are running.
          silent = true,
        },
      },
    },
  },
}
