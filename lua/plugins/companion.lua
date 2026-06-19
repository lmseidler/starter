return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  opts = {
    interactions = {
      cli = {
        agent = "pi",
        agents = {
          pi = {
            cmd = "pi",
            args = {},
            description = "Pi CLI",
            provider = "terminal",
          },
          opencode = {
            cmd = "opencode",
            args = {},
            description = "OpenCode CLI",
            provider = "terminal",
          },
        },
      },
    },
  },
  keys = {
    { "<leader>aa", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "AI Actions" },
    { "<leader>ac", "<cmd>CodeCompanionChat Toggle<cr>", desc = "AI Chat" },
    { "<leader>aA", "<cmd>CodeCompanionChat Add<cr>", mode = "v", desc = "AI Add Selection" },
    { "<leader>ai", "<cmd>CodeCompanion<cr>", mode = { "n", "v" }, desc = "AI Inline" },
    { "<leader>al", "<cmd>CodeCompanionCLI<cr>", desc = "AI CLI" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
