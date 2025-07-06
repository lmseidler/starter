-- codecompanion
return {
  "olimorris/codecompanion.nvim",
  event = "VeryLazy",
  opts = {
    adapters = {
      mistral = function()
        return require("codecompanion.adapters").extend("mistral", {
          env = {
            api_key = os.getenv("MISTRAL_API_KEY"), -- Set up environment correctly using e.g. rcfile for shell
            endpoint = "https://api.mistral.ai/v1", -- Use the official endpoint or your custom one
          },
          schema = {
            model = {
              default = "mistral-medium-latest",
            },
          },
        })
      end,
    },
    strategies = {
      chat = {
        adapter = "mistral",
      },
      inline = {
        adapter = "mistral",
      },
    },
  },
}
