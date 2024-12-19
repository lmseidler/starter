return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- add some lsp to lspconfig
      basedpyright = {},
    },
  },
}
