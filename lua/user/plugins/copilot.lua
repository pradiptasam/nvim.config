return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",
          accept_word = "<C-f>",
          -- next = "<C-]>",
          -- prev = "<C-p>",
          dismiss = "<C-e>",
        },
      },
      panel = { enabled = false },
    })
  end,
}
