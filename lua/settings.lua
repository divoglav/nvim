local o = vim.o
local g = vim.g

o.clipboard = "unnamedplus"   -- Use system clipboard as default register.

o.mouse = "a"                 -- Enable mouse support in all modes.

o.swapfile = false            -- Disable swap file creation.
o.undofile = true             -- Enable persistent undo.

o.ignorecase = true           -- Ignore case when searching.
o.smartcase = true            -- Use case-sensitive search if any uppercase characters are used.

o.smartindent = true          -- Automatically adjust indentation based on syntax.
o.expandtab = true            -- Use spaces instead of tabs for indentation.
o.shiftwidth = 2              -- Number of spaces for each indentation level.
o.tabstop = 2                 -- Number of spaces a tab character represents.
o.softtabstop = 2             -- Number of spaces inserted for <Tab> in insert mode.

o.number = false              -- Disable absolute line numbers.
o.relativenumber = false      -- Disable relative line numbers.
o.signcolumn = "yes"          -- Show sign column.
o.cursorline = false          -- Show cursor line.
o.wrap = false                -- Word wrap.

o.timeoutlen = 300;           -- Delay for key stuff.

o.equalalways = false         -- Don't resize splits automatically.
o.splitright = true           -- Split vertical window to the right.
o.splitbelow = true           -- Split horizontal window to the bottom.

o.foldmethod = "indent";      -- Stuff that enables folding.
o.foldlevel = 999;            -- Stuff that enables folding.

o.list = true                 -- Show hidden characters.
o.fillchars = "eob: "         -- End of buffer (default ~) characters.

o.termguicolors = true        -- Enable 24-bit RGB colors.

vim.opt.shortmess:append("I") -- Disable welcome message.

vim.opt.iskeyword:remove("_") -- Treat "_" as a symbol.

vim.diagnostic.config({
  virtual_text = false,     -- Inline text
  signs = true,             -- Sign column
  underline = true,         -- Underlines
  update_in_insert = false, -- Updates in insert mode
  severity_sort = true,     -- Sort by severity
})

g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0
