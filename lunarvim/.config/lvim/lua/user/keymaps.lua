--keymaps

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--kill arrow keys

keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

keymap("v", "<Up>", "<Nop>", opts)
keymap("v", "<Down>", "<Nop>", opts)
keymap("v", "<Left>", "<Nop>", opts)
keymap("v", "<Right>", "<Nop>", opts)

keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)

-- j/k esccape
keymap("i", "jk", "<ESC>", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- which-key keymap

lvim.builtin.which_key.mappings["o"] = { ":!opout <c-r>%<CR><CR>", "opout"}
lvim.builtin.which_key.mappings["x"] = { "<cmd>BufferKill<CR>", "Close Buffer" }

lvim.builtin.which_key.mappings["c"] = { ":w<CR>:!compiler %:p<CR><CR>","Doc Compiler"}
lvim.builtin.which_key.mappings["u"] = { ":w<CR>:!pandoc % -f latex -t docx -o %:r.docx<CR><CR>", "Latex to Docx"}
-- lvim.builtin.which_key.mappings["o"] = { ":w<CR>:!pandoc % -t beamer -o %:r.pdf<CR><CR>","Beamer Presentation"}

lvim.builtin.which_key.mappings["v"] = {
  name = "Zenmode and Pencil",
	z = { "<cmd>ZenMode<cr>", "Zenmode" },
 	s = { "<cmd>SoftPencil<cr>", "Soft pencil" },
 	h = { "<cmd>HardPencil<cr>", "Hard pencil" },
 	v = { "<cmd>vs<cr>", "Vertical Split" },
 	m = { "<cmd>TZMinimalist<cr>", "True Zen Minimalist" },
}

lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}
