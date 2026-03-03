return {
  "robitx/gp.nvim",
  config = function()
    local conf = {
      providers = {
        openai = {
          disable = true, -- disable default OpenAI
        },
        openrouter = {
          endpoint = "https://openrouter.ai/api/v1/chat/completions",
          secret = os.getenv("OPENROUTER_API_KEY"),
        },
      },

      agents = {
        -- Disable default agents you don't need
        { name = "ChatGPT4o", disable = true },
        { name = "ChatGPT4o-mini", disable = true },
        { name = "CodeGPT4o", disable = true },
        { name = "CodeGPT4o-mini", disable = true },

        -- Command agent for code edits with Gemini 2.5 Flash
        {
          provider = "openrouter",
          name = "Gemini-Flash",
          chat = false,
          command = true,
          model = { model = "google/gemini-3-flash-preview", temperature = 0.7 },
          system_prompt = require("gp.defaults").code_system_prompt,
        },
      },

      -- Set as default agents
      default_command_agent = "Gemini-Flash-Code",
    }

    require("gp").setup(conf)

    -- Keymaps (optional)
    vim.keymap.set({ "n", "i" }, "<C-g>c", "<cmd>GpChatNew<cr>", { desc = "New Chat" })
    vim.keymap.set({ "n", "i" }, "<C-g>t", "<cmd>GpChatToggle<cr>", { desc = "Toggle Chat" })
    vim.keymap.set("v", "<C-g>r", ":<C-u>'<,'>GpRewrite<cr>", { desc = "Rewrite Selection" })
    vim.keymap.set("v", "<C-g>a", ":<C-u>'<,'>GpAppend<cr>", { desc = "Append After Selection" })
  end,
}
