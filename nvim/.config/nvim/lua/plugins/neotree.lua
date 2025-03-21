return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".settings",
          ".classpath",
          ".project",
        },
        never_show = {
          ".git",
        },
      },
    },
    window = {
      position = "right"
    }
  },
}
