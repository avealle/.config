return {
  {
    "preservim/nerdtree",
    config = function()
      -- Keybindings for NERDTree
      vim.keymap.set("n", "<leader>/", ":NERDTreeToggle<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<leader>nf", ":NERDTreeFind<CR>", { noremap = true, silent = true })
      -- Show hidden files in NERDTree
      vim.g.NERDTreeShowHidden = 1
    end
  }
}
