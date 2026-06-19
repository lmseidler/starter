return {
  "saghen/blink.cmp",
  -- opts = function()
  --   return {
  --     keymap = {
  --       -- Manually invoke minuet completion.
  --       ["<A-y>"] = require("minuet").make_blink_map(),
  --     },
  --     sources = {
  --       default = function(ctx)
  --         local ok, node = pcall(vim.treesitter.get_node)
  --         if ok and node and vim.tbl_contains({ "comment", "line_comment", "block_comment" }, node:type()) then
  --           return {} -- no completions in comments
  --         end
  --
  --         -- return { "lsp", "path", "copilot" } -- no snippets, no buffer
  --         return { "lsp", "path", "minuet" } -- no snippets, no buffer
  --       end,
  --       providers = {
  --         minuet = {
  --           name = "minuet",
  --           module = "minuet.blink",
  --           async = true,
  --           -- Should match minuet.config.request_timeout * 1000,
  --           -- since minuet.config.request_timeout is in seconds
  --           timeout_ms = 3000,
  --           score_offset = 50, -- Gives minuet higher priority among suggestions
  --         },
  --       },
  --     },
  --     completion = { trigger = { prefetch_on_insert = false } },
  --   }
  -- end,
  dependencies = { "fang2hou/blink-copilot" },
  opts = {
    sources = {
      default = function(ctx)
        local ok, node = pcall(vim.treesitter.get_node)
        if ok and node and vim.tbl_contains({ "comment", "line_comment", "block_comment" }, node:type()) then
          return {} -- no completions in comments
        end

        return { "lsp", "path", "copilot" } -- no snippets, no buffer
      end,
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        },
      },
    },
  },
}
