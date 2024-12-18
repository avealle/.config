return {
  {
    "thoughtbot/vim-rspec",
    config = function()
      vim.keymap.set("n", "<Leader>tf", ":call RunCurrentSpecFile()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<Leader>tn", ":call RunNearestSpec()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<Leader>tl", ":call RunLastSpec()<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "<Leader>ta", ":call RunAllSpecs()<CR>", { noremap = true, silent = true })

      vim.g.rspec_command = "!bundle exec rspec {spec}"
    end,
  },
}
