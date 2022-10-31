
-- which-key keymap

lvim.builtin.which_key.mappings["o"] = { ":!opout <c-r>%<CR><CR>", "opout"}
lvim.builtin.which_key.mappings["x"] = { "<cmd>BufferKill<CR>", "Close Buffer" }

lvim.builtin.which_key.mappings["c"] = { ":w<CR>:!compiler %:p<CR><CR>","Doc Compiler"}
lvim.builtin.which_key.mappings["u"] = { ":w<CR>:!pandoc % -f latex -t docx -o %:r.docx<CR><CR>", "Latex to Docx"}
-- lvim.builtin.which_key.mappings["o"] = { ":w<CR>:!pandoc % -t beamer -o %:r.pdf<CR><CR>","Beamer Presentation"}

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

lvim.builtin.which_key.mappings["v"] = {
  name = "Zenmode and Pencil",
	z = { "<cmd>ZenMode<cr>", "Zenmode" },
 	s = { "<cmd>SoftPencil<cr>", "Soft pencil" },
 	h = { "<cmd>HardPencil<cr>", "Hard pencil" },
 	v = { "<cmd>vs<cr>", "Vertical Split" },
 	m = { "<cmd>TZMinimalist<cr>", "True Zen Minimalist" },
}


lvim.builtin.which_key.mappings["t"] = {
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
  f = { "<cmd>Autosession search<cr>", "Find" },
  d = { "<cmd>Autosession delete<cr>", "Find Delete" },
}
