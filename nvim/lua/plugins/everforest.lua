return {
  {
    "sainnhe/everforest",
    lazy = false,
    config = function()
        vim.cmd.colorscheme("everforest")
        vim.g.everforest_background = "medium"
        vim.g.everforest_better_performance = 1
    end
  }
}
