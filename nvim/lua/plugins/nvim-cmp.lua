return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
    "hrsh7th/cmp-buffer",   -- Buffer source for nvim-cmp
    "hrsh7th/cmp-path",     -- Path source for nvim-cmp
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      formatting = {
        fields = { "abbr", "kind" },
        format = function(entry, vim_item)
          vim_item.menu = nil
          return vim_item
        end,
      },
      sources = {
        { name = "nvim_lsp", max_item_count = 3  },
        { name = "buffer", max_item_count = 7 },
        { name = "path" },
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
    })
  end,
}
