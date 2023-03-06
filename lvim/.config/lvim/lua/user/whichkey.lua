
-- which-key keymap
lvim.builtin.which_key.mappings["a"] = { "<cmd>Alpha<CR>", "Dashboard" }
lvim.builtin.which_key.mappings["t"] = { "<cmd>Telescope live_grep<CR>", "Find Text"}
lvim.builtin.which_key.mappings["o"] = { ":!opout <c-r>%<CR><CR>", "opout"}
lvim.builtin.which_key.mappings["x"] = { "<cmd>BufferKill<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["X"] = { ":!chmod +x %<CR>", "Make script executable" }

lvim.builtin.which_key.mappings["c"] = { ":w<CR>:!compiler %:p<CR><CR>","Doc Compiler"}
lvim.builtin.which_key.mappings["u"] = { ":w<CR>:!pandoc % -f latex -t docx -o %:r.docx<CR><CR>", "Latex to Docx"}
-- lvim.builtin.which_key.mappings["o"] = { ":w<CR>:!pandoc % -t beamer -o %:r.pdf<CR><CR>","Beamer Presentation"}

-- lvim.builtin.which_key.mappings["P"] =   { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["P"] =   { "<cmd>Telescope projects<CR>", "Projects" }

-- Better yanking
lvim.builtin.which_key.vmappings["y"] = {"'\'+y"}
lvim.builtin.which_key.mappings["y"] = {"'\'+y"}
-- lvim.builtin.which_key.mappings["Y"] = {"'\'+Y"}
-- lvim.builtin.which_key.mappings["Y"] = {'gg"+yG'}
lvim.keys.normal_mode["<leader>Y"] = 'gg"+yG'
lvim.keys.normal_mode["<leader>P"] = 'o<ESC>Pk'

-- lvim.builtin.which_key.mappings["p"] = {"'\'_dP"}
lvim.builtin.which_key.vmappings["D"] = {"'\'_d"}
lvim.builtin.which_key.mappings["D"] = {"'\'_d"}


lvim.builtin.which_key.mappings["v"] = {
  name = "Zenmode and Pencil",
	z = { "<cmd>ZenMode<cr>", "Zenmode" },
 	s = { "<cmd>SoftPencil<cr>", "Soft pencil" },
 	h = { "<cmd>HardPencil<cr>", "Hard pencil" },
 	v = { "<cmd>vs<cr>", "Vertical Split" },
 	m = { "<cmd>TZMinimalist<cr>", "True Zen Minimalist" },
 	-- l = { "<cmd>lua require('languagetool').check_grammar()<CR>", "Language Tool" },
}

lvim.builtin.which_key.mappings["z"] = {
  name = "+zk",
  -- n = { "<cmd>ZkNew { title = vim.fn.input('Title: ') }<cr>", "New Note" },
  n = { "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", "New Note" },
  f = { "<cmd>ZkNew { dir = '/home/chris/.local/.src/zettlekasten/fleeting', title = vim.fn.input('Title: ') }<cr>", "Fleeting Note" },
  p = { "<cmd>ZkNew { dir = '/home/chris/.local/.src/zettlekasten/permanent', title = vim.fn.input('Title: ') }<cr>", "Permanent Note" },
  l = { "<cmd>ZkNew { dir = '/home/chris/.local/.src/zettlekasten/literature', title = vim.fn.input('Title: ') }<cr>", "Literature Note" },
  t = { "<cmd>Telescope zk tags<cr>", "Search by Tags" },

}

lvim.builtin.which_key.mappings["T"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}


-- lvim.builtin.which_key.mappings["S"] = {
--   name = "Search",
--   b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
--   c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
--   f = { "<cmd>Telescope find_files<cr>", "Find File" },
--   h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
--   H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
--   M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
--   r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
--   R = { "<cmd>Telescope registers<cr>", "Registers" },
--   t = { "<cmd>Telescope live_grep<cr>", "Text" },
--   k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
--   C = { "<cmd>Telescope commands<cr>", "Commands" },
--   p = {
--     "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
--     "Colorscheme with Preview",
--   },
-- }


lvim.builtin.which_key.mappings["S"] = {
  name = "Session",
  s = { "<cmd>SaveSession<cr>", "Save" },
  r = { "<cmd>RestoreSession<cr>", "Restore" },
  x = { "<cmd>DeleteSession<cr>", "Delete" },
  f = { "<cmd>SearchSession<cr>", "Find" },
  d = { "<cmd>Autosession delete<cr>", "Find Delete" },
}


lvim.builtin.which_key.mappings["m"] = {
  name = "Markings",
  m = { '<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon" },
  ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
  [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
  s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" },
  [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },

}


-- lvim.builtin.which_key.mappings["P"] = {
--   name = "Packer",
--   c = { "<cmd>PackerCompile<cr>", "Compile" },
--   i = { "<cmd>PackerInstall<cr>", "Install" },
--   r = { "<cmd>lua require('lvim.plugin-loader').recompile()<cr>", "Re-compile" },
--   s = { "<cmd>PackerSync<cr>", "Sync" },
--   S = { "<cmd>PackerStatus<cr>", "Status" },
--   u = { "<cmd>PackerUpdate<cr>", "Update" },
-- }

-- P = {
--     name = "Packer",
--     c = { "<cmd>PackerCompile<cr>", "Compile" },
--     i = { "<cmd>PackerInstall<cr>", "Install" },
--     r = { "<cmd>LvimReload<cr>", "Reload" },
--     s = { "<cmd>PackerSync<cr>", "Sync" },
--     u = { "<cmd>PackerUpdate<cr>", "Update" },
--   }
lvim.builtin.which_key.mappings["b"] = { "<cmd>Telescope buffers<cr>", "Buffers" }
lvim.builtin.which_key.mappings[";"] = nil
-- lvim.builtin.which_key.mappings["c"] = nil
lvim.builtin.which_key.mappings["L"] = nil
lvim.builtin.which_key.mappings["s"] = nil
-- lvim.builtin.which_key.mappings["w"] = nil


lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  f = { "<cmd>Telescope find_files<cr>", "Find files" },
  t = { "<cmd>Telescope live_grep<cr>", "Find Text" },
  s = { "<cmd>Telescope grep_string<cr>", "Find String" },
  h = { "<cmd>Telescope help_tags<cr>", "Help" },
  H = { "<cmd>Telescope highlights<cr>", "Highlights" },
  -- i = { "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", "Media" },
  l = { "<cmd>Telescope resume<cr>", "Last Search" },
  m = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<cr>", "Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Tab",
  t = {
    "<cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<cr>",
    "Find Tab",
  },
  n = { "<cmd>tabnew %<cr>", "New Tab" },
  c = { "<cmd>tabclose<cr>", "Close Tab" },
  o = { "<cmd>tabonly<cr>", "Only Tab" },
}



lvim.builtin.which_key.mappings["O"] = {
  name = "Options",
  c = { "<cmd>lua lvim.builtin.cmp.active = false<cr>", "Completion off" },
  C = { "<cmd>lua lvim.builtin.cmp.active = true<cr>", "Completion on" },
  -- w = { '<cmd>lua require("user.functions").toggle_option("wrap")<cr>', "Wrap" },
  -- r = { '<cmd>lua require("user.functions").toggle_option("relativenumber")<cr>', "Relative" },
  -- l = { '<cmd>lua require("user.functions").toggle_option("cursorline")<cr>', "Cursorline" },
  -- s = { '<cmd>lua require("user.functions").toggle_option("spell")<cr>', "Spell" },
  -- t = { '<cmd>lua require("user.functions").toggle_tabline()<cr>', "Tabline" },
}

lvim.builtin.which_key.mappings["g"] = {
  name = "Git",
  -- g = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle(12000)<cr>", "Lazygit" },
  g = { "<cmd>G<cr>", "Fugitive" },
  j = { "<cmd>lua require 'gitsigns'.next_hunk()<cr>", "Next Hunk" },
  k = { "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", "Prev Hunk" },
  l = { "<cmd>GitBlameToggle<cr>", "Blame" },
  p = { "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", "Preview Hunk" },
  r = { "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", "Reset Hunk" },
  R = { "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", "Reset Buffer" },
  s = { "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", "Stage Hunk" },
  u = {
    "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>",
    "Undo Stage Hunk",
  },
  n = { ":!git checkout -b ", "Checkout New Branch" },
  o = { "<cmd>Telescope git_status<cr>", "Open changed file" },
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope git_commits<cr>", "Checkout commit" },
  f = { "<cmd>Telescope git_bcommits<cr>", "Checkout buffer commit" },
  d = {
    "<cmd>Gitsigns diffthis HEAD<cr>",
    "Diff",
  },
  -- G = {
  --   name = "Gist",
  --   a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
  --   d = { "<cmd>Gist -d<cr>", "Delete" },
  --   f = { "<cmd>Gist -f<cr>", "Fork" },
  --   g = { "<cmd>Gist -b<cr>", "Create" },
  --   l = { "<cmd>Gist -l<cr>", "List" },
  --   p = { "<cmd>Gist -b -p<cr>", "Create Private" },
  -- },
}

lvim.builtin.which_key.mappings["r"] = {
  name = "Replace",
  r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
}

lvim.builtin.which_key.mappings["q"] = { '<cmd>lua require("user.functions").smart_quit()<CR>', "Quit" }

lvim.builtin.which_key.mappings["d"] = {
  name = "Debug",
  b = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Breakpoint" },
  c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
  i = { "<cmd>lua require'dap'.step_into()<cr>", "Into" },
  o = { "<cmd>lua require'dap'.step_over()<cr>", "Over" },
  O = { "<cmd>lua require'dap'.step_out()<cr>", "Out" },
  r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Repl" },
  l = { "<cmd>lua require'dap'.run_last()<cr>", "Last" },
  u = { "<cmd>lua require'dapui'.toggle()<cr>", "UI" },
  x = { "<cmd>lua require'dap'.terminate()<cr>", "Exit" },
}
