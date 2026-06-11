return {
  -- Filetype detection (for LazyVim >= 12.x)
  {
    "LazyVim/LazyVim",
    opts = {
      filetype = {
        extension = { blp = "blueprint" },
      },
    },
  },
  -- Treesitter parser
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts = opts or {}
      opts.ensure_installed = vim.list_extend(opts.ensure_installed or {}, { "blueprint" })
    end,
  },
  -- LSP via Mason
  {
    "mason-org/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.ensure_installed = vim.list_extend(opts.ensure_installed or {}, { "blueprint_ls" })
    end,
  },
  -- lspconfig server config
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        blueprint_ls = {},
      },
    },
  },
}
