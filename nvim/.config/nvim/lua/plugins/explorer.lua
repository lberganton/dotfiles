return {
  {
    "folke/snacks.nvim",

    opts = {
      picker = {
        sources = {
          explorer = {
            -- Show hidden files.
            hidden = true,

            layout = {
              -- Put the explorer on the right side.
              layout = { position = "right" },

              -- Hide the search bar.
              auto_hide = { "input" },
            },

            win = {
              list = {
                wo = {
                  -- Relative line numbers.
                  number = true,
                  relativenumber = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
