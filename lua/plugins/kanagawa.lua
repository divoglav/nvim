-- Colorscheme: Kanagawa.

return {
  "rebelot/kanagawa.nvim",

  lazy = false,

  priority = 1000,

  config = function()
    require("kanagawa").setup({
      compile = false, -----------------------------------------------------------------------
      --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
          -- Syntax --
          Normal = { fg = palette.oldWhite },
          Constant = { fg = palette.fujiWhite },
          Boolean = { fg = palette.surimiOrange, bold = false },

          ["@markup.heading"] = { fg = palette.sakuraPink, bold = true },
          ["@markup.strong"] = { fg = palette.surimiOrange, bold = true },
          ["@markup.italic"] = { fg = palette.springGreen, italic = true },
          ["@markup.raw"] = { fg = palette.fujiWhite },
          ["@markup.raw.markdown_inline"] = { fg = palette.fujiWhite, bg = palette.sumiInk4 },

          -- Treesitter --
          ["@lsp.typemod.function.readonly"] = { bold = false },

          -- UI ---
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
          PmenuSel = { fg = "none", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    })

    vim.cmd("colorscheme kanagawa")
  end,
}
