require("trouble").setup {
  position = "bottom", -- position of the list can be: bottom, top, left, right
  height = 8, -- height of the trouble list when position is top or bottom
  icons = true, -- use devicons for filenames
  auto_open = true, -- automatically open the list when you have diagnostics
  auto_close = true, -- automatically close the list when you have no diagnostics
  mode = "loclist"
}
