-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- Prepend mise shims to PATH
vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH

local opt = vim.opt

-- UI + Display
opt.termguicolors = true
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = true
opt.laststatus = 3 -- global statusline
opt.showcmd = false
opt.ruler = true
opt.title = true
opt.titlestring = "%<%F%=%l/%L - nvim"
opt.colorcolumn = "99999" -- for indent guides

-- Tabs + Indents
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Behavior
opt.hidden = true
opt.mouse = "a"
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undodir = vim.fn.stdpath("cache") .. "/undo"
opt.undofile = true
opt.timeoutlen = 500
opt.updatetime = 100
opt.fileencoding = "utf-8"

-- Search
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Completion
opt.completeopt = { "menuone", "noselect" }
opt.pumheight = 10

-- Markdown + Visuals
opt.conceallevel = 0 -- adjust in ftplugin/markdown.lua
opt.cmdheight = 1 -- fine with LazyVim, no need to change
opt.spell = false
opt.spelllang = { "en" }

-- GUI font (ignored unless using a GUI like Neovide)
-- opt.guifont = "monospace:h17"

-- need to overide lazyvim winbar
vim.g.lazyvim_winbar = false

-- -- Example colors (adjust to your palette)
-- vim.api.nvim_set_hl(0, "WinBar1", { fg = "Directory", bg = "NONE" }) -- counters / misc
-- vim.api.nvim_set_hl(0, "WinBar2", { fg = "Statement", bg = "NONE" }) -- buffer count
-- vim.api.nvim_set_hl(0, "WinBar3", { fg = "Added", bg = "NONE" }) -- filename

-- Use OSC52 inside persistent terminal multiplexers
-- because the clipboard belongs to the terminal client attached now.

vim.opt.clipboard = ""

if vim.env.HERDR_ENV or vim.env.TMUX then
  local osc52 = require("vim.ui.clipboard.osc52")

  vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
      if vim.v.event.operator ~= "y" then
        return
      end

      osc52.copy("+")(vim.fn.getreg('"', 1, true), vim.fn.getregtype('"'))
    end,
  })
else
  vim.opt.clipboard = "unnamedplus"
end

-- Helper to extract fg color from an existing highlight group
local function hl_fg(group)
  local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
  if ok and hl.fg then
    return string.format("#%06x", hl.fg)
  end
  return "NONE"
end

-- Set winbar highlights by borrowing from your colorscheme's groups
local function set_winbar_colors()
  vim.api.nvim_set_hl(0, "WinBar1", { fg = hl_fg("Directory"), bg = "NONE" })
  vim.api.nvim_set_hl(0, "WinBar2", { fg = hl_fg("Statement"), bg = "NONE" })
  vim.api.nvim_set_hl(0, "WinBar3", { fg = hl_fg("Added"), bg = "NONE" })
end

-- Apply on startup and every time the colorscheme changes
set_winbar_colors()
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_winbar_colors,
})
