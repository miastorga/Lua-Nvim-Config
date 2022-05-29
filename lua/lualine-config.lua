local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic", "nvim_lsp" },
  sections = { "error", "warn" },
  symbols = { error = " ", warn = " " },
  colored = false,
  update_in_insert = true,
  always_visible = true,
}
local branch = {
  "branch",
  icons_enabled = true,
  icon = "",
}
local diff = {
  "diff",
  colored = false,
  symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
  cond = hide_in_width
}
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'gruvbox_dark',
  },
  sections = {
    lualine_a = { diagnostics, branch },
    lualine_x = { diff }
  }
})
