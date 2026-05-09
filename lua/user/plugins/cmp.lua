return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "onsails/lspkind.nvim",
    {
      "zbirenbaum/copilot-cmp",
      config = function()
        require("copilot_cmp").setup()
      end,
    },
  },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")

    local enabled = true
    vim.keymap.set("n", "<leader>ct", function()
      enabled = not enabled
      cmp.setup({ enabled = enabled })
      vim.notify("Completion " .. (enabled and "enabled" or "disabled"))
    end, { desc = "Toggle completion" })

    cmp.setup({
      completion = { completeopt = "menu,menuone,preview,noselect" },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      sources = cmp.config.sources({
        { name = "copilot" },
        -- { name = "nvim_lsp" },
        -- { name = "buffer" },
        -- { name = "path" },
      }),
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text",
          symbol_map = { Copilot = "" },
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },
    })
  end,
}
