return {
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        style = "vulgaris",
        transparent = true,
        dim_inactive = true,
      })
      require("bamboo").load()
    end,
  },
}
