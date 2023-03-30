require('lualine').setup {
  options = {
    component_separators = { left = '│', right = '│'},
    section_separators = { left = '', right = ''},
    theme = 'palenight',
  },
  globalstatus = true,
  refresh = {
    statusline = 1000,
    tabline = 1000,
    winbar = 1000
  },
  extensions = {
    'fugitive',
    'man',
    'nvim-tree',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      'diff',
    },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = {
      'location',
    }
  },
}
