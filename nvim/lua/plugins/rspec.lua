return {
  {
    "thoughtbot/vim-rspec",
    config = function()
      vim.keymap.set("n", "<Leader>t", ":call RunCurrentSpecFile()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<Leader>s", ":call RunNearestSpec()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<Leader>l", ":call RunLastSpec()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<Leader>a", ":call RunAllSpecs()<CR>", { noremap = true, silent = true })

      vim.g.rspec_command = "!bundle exec rspec {spec}"
    end,
  },
}
