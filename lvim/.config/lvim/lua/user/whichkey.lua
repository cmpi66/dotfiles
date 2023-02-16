
-- which-key keymap
lvim.builtin.which_key.mappings["a"] = { "<cmd>Alpha<CR>", "Dashboard" }
lvim.builtin.which_key.mappings["t"] = { "<cmd>Telescope live_grep<CR>", "Find Text"}
lvim.builtin.which_key.mappings["o"] = { ":!opout <c-r>%<CR><CR>", "opout"}
lvim.builtin.which_key.mappings["x"] = { "<cmd>BufferKill<CR>", "Close Buffer" }
lvim.builtin.which_key.mappings["X"] = { ":!chmod +x %<CR>", "Make script executable" }

lvim.builtin.which_key.mappings["c"] = { ":w<CR>:!compiler %:p<CR><CR>","Doc Compiler"}
lvim.builtin.which_key.mappings["u"] = { ":w<CR>:!pandoc % -f latex -t docx -o %:r.docx<CR><CR>", "Latex to Docx"}
-- lvim.builtin.which_key.mappings["o"] = { ":w<CR>:!pandoc % -t beamer -o %:r.pdf<CR><CR>","Beamer Presentation"}

lvim.builtin.which_key.mappings["P"] =   { "<cmd>Telescope projects<CR>", "Projects" }

-- Better yanking
lvim.builtin.which_key.vmappings["y"] = {"'\'+y"}
lvim.builtin.which_key.mappings["y"] = {"'\'+y"}
-- lvim.builtin.which_key.mappings["Y"] = {"'\'+Y"}
-- lvim.builtin.which_key.mappings["Y"] = {'gg"+yG'}
lvim.keys.normal_mode["<leader>Y"] = 'gg"+yG'

-- lvim.builtin.which_key.mappings["p"] = {"'\'_dP"}
lvim.builtin.which_key.vmappings["d"] = {"'\'_d"}
lvim.builtin.which_key.mappings["d"] = {"'\'_d"}


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


lvim.builtin.which_key.mappings["S"] = {
  name = "Search",
  b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
  c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
  f = { "<cmd>Telescope find_files<cr>", "Find File" },
  h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
  H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
  M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
  r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  R = { "<cmd>Telescope registers<cr>", "Registers" },
  t = { "<cmd>Telescope live_grep<cr>", "Text" },
  k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
  C = { "<cmd>Telescope commands<cr>", "Commands" },
  p = {
    "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>",
    "Colorscheme with Preview",
  },
}


lvim.builtin.which_key.mappings["s"] = {
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
