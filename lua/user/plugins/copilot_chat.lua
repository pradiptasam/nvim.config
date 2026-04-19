return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
    { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
  },
  build = "make tiktoken", -- Only on MacOS or Linux
  opts = {
    prompts = {
      Rename = {
        prompt = "Rename the following code: ",
        selection = function(source)
          local select = require("CopilotChat.select")
          return select.visual(source)
        end,
      },
    },
  },
  keys = {
    { "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Chat with Copilot" },
    { "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain with Copilot Chat" },
    { "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review with Copilot Chat" },
    { "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix with Copilot Chat" },
    { "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize with Copilot Chat" },
    { "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs with Copilot Chat" },
    { "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests with Copilot Chat" },
    { "<leader>zm", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message"},
    { "<leader>zs", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit for selection" },
    { "<leader>zp", ":CopilotChatPaste<CR>", mode = "v", desc = "Paste with Copilot Chat" },
  },
}
