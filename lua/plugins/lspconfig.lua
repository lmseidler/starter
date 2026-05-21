return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- copilot = { enabled = false },
      -- add some lsp to lspconfig
      basedpyright = {},
    },
  },
}
