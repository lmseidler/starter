return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- add pylsp to lspconfig
      -- python lsp server will be automatically installed with mason and loaded with lspconfig
      pylsp = {},
    },
  },
}
