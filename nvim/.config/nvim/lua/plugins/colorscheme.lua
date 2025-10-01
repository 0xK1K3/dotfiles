return {
  {
    "gthelding/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        filter = "ristretto",
      })
      vim.cmd("colorscheme monokai-pro")
    end,
  },
}
