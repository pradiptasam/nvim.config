return{
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-fzy-native.nvim",
  },
  config = function()
    require("chatgpt").setup({
      async_api_key_cmd = "pass show api/tokens/openai",
    })
  end,
}
