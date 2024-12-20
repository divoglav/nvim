return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,

        -- null_ls.builtins.diagnostics.eslint_d.with({
        --   condition = function(utils)
        --     return utils.root_has_file(".eslintrc.js", ".eslintrc.json", ".eslintrc.cjs")
        --   end,
        -- }),
      },
    })
  end,
}
