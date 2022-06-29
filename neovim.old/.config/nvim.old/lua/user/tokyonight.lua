-- Example config in Lua
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_italic_keywords = false
vim.g.tokyonight_italic_variables = false
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_dark_float = true
vim.g.tokyonight_lualine_bold = true
vim.g.tokyonight_dark_sidebar = true
-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
