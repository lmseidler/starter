return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      local mp = require("monokai-pro")

      mp.setup({
        override_palette = function(filter)
          local palette = mp.get_palette("octagon")

          palette.background = "#282c34"

          return palette
        end,
      })
    end,
    config = function()
      vim.cmd.colorscheme("monokai-pro")
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "monokai-pro" } },
}
