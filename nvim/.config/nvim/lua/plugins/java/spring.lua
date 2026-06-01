-- Setup of 'spring-boot.nvim' plugin.

return {
  -- Install 'vscode-spring-boot-tools' from mason.
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "vscode-spring-boot-tools" } },
  },

  -- Configure jdtls to load 'spring-boot.nvim'.
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      opts.jdtls = opts.jdtls or {}
      opts.jdtls.init_options = opts.jdtls.init_options or {}
      opts.jdtls.init_options.bundles = opts.jdtls.init_options.bundles or {}

      vim.list_extend(opts.jdtls.init_options.bundles, require("spring_boot").java_extensions())
    end,
  },

  -- Install and configure 'spring-boot.nvim' plugin.
  {
    "JavaHello/spring-boot.nvim",
    ft = { "java", "yaml", "jproperties" },
    dependencies = { "mfussenegger/nvim-jdtls" },
    opts = {},
  },
}
