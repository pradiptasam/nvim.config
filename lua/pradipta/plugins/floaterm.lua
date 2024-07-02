return{
  "voldikss/vim-floaterm",
  config = function()
    -- local floaterm = require("floaterm")
    -- floaterm.setup({
    --   dimensions = {
    --     height = 0.8,
    --     width = 0.8,
    --     x = 0.5,
    --     y = 0.5,
    --   },
    --   border = 'single',
    --   auto_insert = true,
    --   persist_size = true,
    --   persist_pos = true,
    --   winblend = 10,
    --   hide_numbers = true,
    --   number = 0,
    --   relativenumber = 0,
    --   cursor = 'vertical',
    --   signcolumn = 'no',
    --   numberwidth = 2,
    --   list = false,
    --   wrap = false,
    --   wrap_lines = 0,
    --   scrolloff = 3,
    --   last_buf = 0,
    --   autoclose = true,
    --   autoinsert = true,
    --   float_opts = {
    --     border = 'single',
    --     width = 0.8,
    --     height = 0.8,
    --     winblend = 10,
    --     highlights = {
    --       border = "Normal",
    --       background = "Normal",
    --     },
    --   },
    -- })

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>mf", "<cmd>FloatermToggle<cr>",
      { desc = "Toggle floaterm" })
    keymap.set("n", "<leader>mn", "<cmd>FloatermNew<cr>",
      { desc = "New floaterm" })
  end,
}


