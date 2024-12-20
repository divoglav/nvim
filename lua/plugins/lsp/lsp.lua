return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local capabilities = cmp_nvim_lsp.default_capabilities()
    local mason_lspconfig = require("mason-lspconfig")

    local custom_hover = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })

    -- Setup LSP servers
    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
          handlers = { ["textDocument/hover"] = custom_hover, },
        })
      end,
    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      handlers = { ["textDocument/hover"] = custom_hover, },
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
  end,
}
