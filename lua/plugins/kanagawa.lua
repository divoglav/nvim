-- Color theme.

return {
  "rebelot/kanagawa.nvim",
  -- lazy = false,
  -- priority = 1000,
  config = function()
    require("kanagawa").setup({
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}

      colors = {          -- add/modify theme and palette colors
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },

      -- overrides = function(colors) -- add/modify highlights
      --   return {}
      -- end,

      -- theme = "wave",  -- Load "wave" theme when 'background' option is not set
      -- background = {   -- map the value of 'background' option to a theme
      --   dark = "wave", -- try "dragon" !
      --   light = "lotus"
      -- },
    })

    vim.cmd("colorscheme kanagawa")
  end,
}

-- NOTE 1: If you enable compilation, make sure to run :KanagawaCompile command every time you make changes to your config.
--
-- " 1. Modify your config
-- " 2. Restart nvim
-- " 3. Run this command:
-- :KanagawaCompile
