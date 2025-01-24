return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline",
    },

    presets = {
      bottom_search = true,
      command_palette = false,
      long_message_to_split = false,
      inc_rename = false,
      lsp_doc_border = false,
    },

    messages = {
      view = "mini",
    },

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
  },
}
