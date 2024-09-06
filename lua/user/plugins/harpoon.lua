return{
  "ThePrimeagen/harpoon",
  config = function()
    local harpoon = require("harpoon")
    harpoon.setup({
      global_settings = {
        -- save_on_toggle = false,
        -- save_on_change = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>hf", "<cmd>lua require('harpoon.mark').toggle_file()<cr>",
      { desc = "Toggle harpoon marks" })
    keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<cr>",
      { desc = "Add file in Harpoon" })
    keymap.set("n", "<leader>ht", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      { desc = "Toggle harpoon quick menu" })
    keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>",
      { desc = "Navigate to next file in harpoon" })
    keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
      { desc = "Navigate to previous file in harpoon" })
  end,
}
