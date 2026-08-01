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
  -- lspconfig server config (install manually via npm i -g @blueprint/language-server)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        blueprint_ls = {},
      },
    },
  },
}
