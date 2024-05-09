return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "tsserver", "clangd",  "cmake", "eslint", "jsonls", "jedi_language_server", "pyright"}})
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cmake.setup({})
      lspconfig.eslint.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.jedi_language_server.setup({})
      lspconfig.pyright.setup({})
      --lspconfig.sourcery.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
    end
  }
}
