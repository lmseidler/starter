return {
  "saghen/blink.cmp",
  opts = {
    sources = {
      default = function(ctx)
        local ok, node = pcall(vim.treesitter.get_node)
        if ok and node and vim.tbl_contains({ "comment", "line_comment", "block_comment" }, node:type()) then
          return {} -- no completions in comments
        end

        return { "lsp", "path", "copilot" } -- no snippets, no buffer
      end,
    },
  },
}
