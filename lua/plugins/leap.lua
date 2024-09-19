-- Fast, precise motion navigation within buffers.

return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").create_default_mappings()
  end,
}
