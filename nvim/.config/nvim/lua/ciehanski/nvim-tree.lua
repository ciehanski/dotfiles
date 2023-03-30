require("nvim-tree").setup {
  view = {
    width = 32,
  },
  renderer = {
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "▸",
          arrow_open = "▾",
        },
      },
    },
  },
  filters = {
    custom = {
      ".pyc$",
      "^.git$",
      "^.DS_Store$",
      "^node_modules$",
      "^target$",
      "^__pycache__$"
    },
  },
}
