-- Highlights other instances of the word under the cursor.

return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      delay = 200,
    })
  end,
}
