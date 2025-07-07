return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "Davidyz/VectorCode",
  },
  event = "VeryLazy",
  opts = {
    -- adapters = {
    --   mistral = function()
    --     return require("codecompanion.adapters").extend("mistral", {
    --       env = {
    --         api_key = os.getenv("MISTRAL_API_KEY"), -- Configure in shell variable
    --         endpoint = "https://api.mistral.ai/v1", -- Or your custom endpoint if needed
    --       },
    --       schema = {
    --         model = {
    --           default = "mistral-medium-latest",
    --         },
    --       },
    --     })
    --   end,
    -- },
    -- strategies = {
    --   chat = {
    --     adapter = "mistral",
    --   },
    --   inline = {
    --     adapter = "mistral",
    --   },
    -- },
    extensions = {
      vectorcode = {
        opts = {
          tool_group = {
            -- this will register a tool group called `@vectorcode_toolbox` that contains all 3 tools
            enabled = true,
            -- a list of extra tools that you want to include in `@vectorcode_toolbox`.
            -- if you use @vectorcode_vectorise, it'll be very handy to include
            -- `file_search` here.
            extras = {},
            collapse = false, -- whether the individual tools should be shown in the chat
          },
          -- tool_opts = {
          --   ["*"] = {},
          --   ls = {},
          --   vectorise = {},
          --   query = {
          --     max_num = { chunk = -1, document = -1 },
          --     default_num = { chunk = 50, document = 10 },
          --     include_stderr = false,
          --     use_lsp = false,
          --     no_duplicate = true,
          --     chunk_mode = false,
          --     summarise = {
          --       enabled = false,
          --       adapter = nil,
          --       query_augmented = true,
          --     },
          --   },
          --   files_ls = {},
          --   files_rm = {},
          -- },
        },
      },
    },
  },
}
