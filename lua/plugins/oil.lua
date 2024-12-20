-- A file explorer with tree-like navigation.

return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      win_options = {
        signcolumn = "yes",
      },

      delete_to_trash = true,

      view_options = {
        show_hidden = true,
      },
    })
  end,
}
