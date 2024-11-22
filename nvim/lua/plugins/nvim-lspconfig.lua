return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/nvim-cmp",         -- Completion framework
    "hrsh7th/cmp-nvim-lsp",     -- LSP source for nvim-cmp
  },
  config = function()
    -- Setup nvim-cmp capabilities for LSP
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    local lspconfig = require("lspconfig")

    -- Ruby LSP setup
    lspconfig.ruby_lsp.setup({
      cmd = { "bundle", "exec", "ruby-lsp" },
      filetypes = { "ruby" },
      root_dir = lspconfig.util.root_pattern("Gemfile", ".git"),
      capabilities = capabilities,
      init_options = {
        enabledFeatures = {
          "codeActions",
          "completion",
          "definition",
          "diagnostics",
          "hover",
          "inlayHints",
        },
      },
    })

    -- Global LSP keymaps
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true, desc = "Go to Definition" })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "Hover Documentation" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true, desc = "References" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "Code Action" })
  end,
}
