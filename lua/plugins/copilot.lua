return {
  "zbirenbaum/copilot.lua",
  -- dependencies = {
  --   "copilotlsp-nvim/copilot-lsp",
  -- },
  opts = {
    panel = {
      enabled = false,
    },
    nes = {
      enabled = false,
      auto_trigger = true,
      keymap = {
        accept_and_goto = "<leader>p",
        dismiss = "<Esc>",
      },
    },
  },
}
