return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "qmljs" },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "qmlls" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        qmlls = {},
      },
    },
  },
}
