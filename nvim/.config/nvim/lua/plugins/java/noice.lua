-- JDTLS sends annoying messages when a java file is edited.
-- This setting solves that.

return {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "lsp",
            kind = "progress",
            find = "jdtls",
          },
          opts = {
            skip = true,
          },
        },
      },
    },
  },
}
