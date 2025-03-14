return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  lazy = false,
  keys = {
    {
      mode = "n",
      "<leader>o",
      "<CMD>Oil<CR>",
      desc = "Open parent directory",
    },
  },
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true, -- Show hidden files
    },
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
