local map = vim.keymap.set

-- Leader
vim.g.mapleader = " "

-- Escape
-- map("i", "jk", "<ESC>", { desc = "Escape" })
-- map("i", "kj", "<ESC>", { desc = "Escape" })

map("n", "<C-o>", "<C-i>", { noremap = true, silent = true })
map("n", "<C-i>", "<C-o>", { noremap = true, silent = true })

-- Terminal
map({ "n", "v" }, "<leader>t", "<cmd>terminal<CR>", { desc = "Terminal" })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Terminal Unselect" })
map("t", "<C-Space>", "<C-\\><C-n>", { desc = "Terminal Unselect" })

-- Telescope
map({ "n", "v" }, "<leader>q", "<cmd>Telescope<CR>", { desc = "Telescope" })
map({ "n", "v" }, "<leader>w", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
map({ "n", "v" }, "<leader>e", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map({ "n", "v" }, "<leader>r", "<cmd>Telescope oldfiles<CR>", { desc = "Oldfiles" })

-- Oil
map({ "n", "v" }, "<leader>a", "<cmd>Oil<CR>", { desc = "Oil" })

-- LSP Target
map({ "n", "v" }, "<leader>da", vim.lsp.buf.code_action, { desc = "Code Action" })
map({ "n", "v" }, "<leader>dr", vim.lsp.buf.rename, { desc = "Rename" })
map({ "n", "v" }, "<leader>ds", "<cmd>Telescope lsp_references<CR>", { desc = "References" })
map({ "n", "v" }, "<leader>dd", vim.diagnostic.open_float, { desc = "Diagnostic" })
map({ "n", "v" }, "<leader>df", "<cmd>Telescope lsp_definitions<CR>", { desc = "Definition" })

-- LSP Global
map({ "n", "v" }, "<leader>fs", "<cmd>LspStop<CR>", { desc = "Stop" })
map({ "n", "v" }, "<leader>fg", "<cmd>LspInfo<CR>", { desc = "Info" })
map({ "n", "v" }, "<leader>fr", "<cmd>LspRestart<CR>", { desc = "Restart" })
map({ "n", "v" }, "<leader>ff", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format" })
map({ "n", "v" }, "<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "Format" })

-- Workspace
map({ "n", "v" }, "<leader>z", "<cmd>set nu!<CR>", { desc = "Toggle Numbers" })
map({ "n", "v" }, "<leader>x", function()
  local wrap_status = vim.wo.wrap
  vim.wo.wrap = not wrap_status
  vim.wo.cursorline = not wrap_status
end, { desc = "Toggle Wrap and Cursorline" })

-- Splits
map({ "n", "v" }, "<C-A-h>", "<C-w><", { desc = "Decrease Width" })
map({ "n", "v" }, "<C-A-j>", "<C-w>-", { desc = "Decrease Height" })
map({ "n", "v" }, "<C-A-k>", "<C-w>+", { desc = "Increase Height" })
map({ "n", "v" }, "<C-A-l>", "<C-w>>", { desc = "Increase Width" })

-- Obsidian
map({ "n", "v" }, "<leader>oo", "<cmd>ObsidianOpen<cr>", { desc = "Open" })
map({ "n", "v" }, "<leader>oh", "<cmd>ObsidianCheck<cr>", { desc = "Health" })

map({ "n", "v" }, "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "New" })
map({ "n", "v" }, "<leader>or", "<cmd>ObsidianRename<cr>", { desc = "Rename" })
map({ "n", "v" }, "<leader>ot", "<cmd>ObsidianTemplate<cr>", { desc = "Template" })

map({ "n", "v" }, "<leader>oe", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Files" })
map({ "n", "v" }, "<leader>ow", "<cmd>ObsidianSearch<cr>", { desc = "Search" })

map({ "n", "v" }, "<leader>ol", "<cmd>ObsidianLinks<cr>", { desc = "Links" })
map({ "n", "v" }, "<leader>ob", "<cmd>ObsidianBacklinks<cr>", { desc = "Backlinks" })

map({ "n", "v" }, "<leader>op", "<cmd>ObsidianPasteImg<cr>", { desc = "Paste Image" })
