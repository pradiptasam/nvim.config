return{
  "epwalsh/obsidian.nvim",
  lazy = false,
  ft = {"markdown"},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-lua/popup.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-fzy-native.nvim",
  },
  config = function()
    require("obsidian").setup({
      workspaces = {
        {
          name = "Notes",
          path = "/Users/k202170/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/second-brain",
        },
      },
    })
    local keymap = vim.keymap

    keymap.set("n", "<leader>on", "<cmd>lua require('obsidian').find_notes()<cr>",
      { desc = "Find notes" })
    keymap.set("n", "<leader>oo", "<cmd>lua require('obsidian').find_notes({insert = true})<cr>",
      { desc = "Find notes and insert" })
  end,
}
