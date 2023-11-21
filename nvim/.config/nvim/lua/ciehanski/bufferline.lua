require('bufferline').setup {
  highlights = {
    fill = {
      bg = "#292D3E"
    },
    modified = {
      fg = "#C792EA",
    },
    modified_visible = {
      fg = "#C792EA",
    },
    modified_selected = {
      fg = "#C792EA",
    },
  },
  options = {
    mode = 'buffers',
    numbers = 'none',
    diagnostics = 'coc',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      return "("..count..")"
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      }
    },
    show_buffer_close_icons = false,
    show_close_icon = false,
    always_show_bufferline = true,
  }
}