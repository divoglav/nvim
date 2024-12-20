-- Colorscheme: Kanagawa.

return {
  "rebelot/kanagawa.nvim",

  lazy = false,

  priority = 1000,

  config = function()
    require("kanagawa").setup({
      compile = false, -----------------------------------------------------------------------
      -- NOTE: If you enable compilation, run :KanagawaCompile
      -- command every time you make changes to your config.

      undercurl = true,
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,
      dimInactive = false,
      terminalColors = true,

      colors = {
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

      overrides = function(colors)
        local theme = colors.theme
        local palette = colors.palette
        return {
          -- Floats
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          -- Windows
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          -- Popup Menu
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
          PmenuSel = { fg = "none", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },

          -- Syntax
          Constant = { fg = palette.fujiWhite },
          Boolean = { fg = palette.surimiOrange, bold = false },
          -- Operator = { bold = true}

          -- Treesitter
          ["@lsp.typemod.function.readonly"] = { bold = false },
          ["@markup.strong"] = { fg = palette.surimiOrange, bold = true, }


        }
      end,
    })

    vim.cmd("colorscheme kanagawa")
  end,
}
