require("nvim-tree").setup {
  view = {
    width = 31,
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
      "~$",
      ".pyc$",
      '^.DS_Store$',
      '^node_modules$',
      '^.ropeproject$',
      '^__pycache__$'
    },
  },
}
