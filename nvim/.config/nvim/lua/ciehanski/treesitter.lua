require("nvim-treesitter.configs").setup {
  ensure_installed = { 
    "c", "css", "scss", "comment", "dockerfile", "lua", "rust",
    "go", "gomod", "help", "html", "toml", "vim", "sql", "markdown",
    "make", "python", "elixir" },
  auto_install = true,
  indent = {
    -- enable = true
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  -- rainbow = {
  --   enable = true,
  --   extended_mode = true,
  --   -- colors = {}, -- table of hex strings
  --   -- termcolors = {} -- table of colour name strings
  -- }
}
