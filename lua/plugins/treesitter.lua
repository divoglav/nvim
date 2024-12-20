-- Provides better syntax highlighting and code understanding.

return {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    dependencies = { "windwp/nvim-ts-autotag" },

    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = false,
        ensure_installed = {
          "bash",
          "lua",

          "markdown",
          "markdown_inline",

          "html",
          "css",
          "javascript",
          "typescript",
          "tsx",
          "json",

          "glsl",
          "hlsl",
        },

        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
