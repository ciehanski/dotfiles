require("trouble").setup {
  position = "bottom", -- position of the list can be: bottom, top, left, right
  height = 7, -- height of the trouble list when position is top or bottom
  icons = true, -- use devicons for filenames
  auto_open = false, -- automatically open the list when you have diagnostics
  auto_close = true, -- automatically close the list when you have no diagnostics
  mode = "loclist"
}
