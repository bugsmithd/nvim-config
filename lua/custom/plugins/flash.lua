return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "gl", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "gL", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
  },
}
