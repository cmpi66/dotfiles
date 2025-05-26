local opts = { noremap = true, silent = false }

local notes = require("config.notes")

-- New notes by type
vim.keymap.set("n", "<leader>zf", function()
  notes.new_note("~/.local/.src/zettlekasten/fleeting")
end, { desc = "New Fleeting Note" })

vim.keymap.set("n", "<leader>zp", function()
  notes.new_note("~/.local/.src/zettlekasten/permanent")
end, { desc = "New Permanent Note" })

vim.keymap.set("n", "<leader>zl", function()
  notes.new_note("~/.local/.src/zettlekasten/literature")
end, { desc = "New Literature Note" })

-- Backlink search (uses Telescope)
vim.keymap.set("n", "<leader>zb", notes.search_backlinks, { desc = "Backlinks to Current Note" })

vim.keymap.set("n", "<leader>zo", function()
  require("snacks").picker("files", {
    cwd = "~/.local/.src/zettlekasten",
  })
end, { desc = "Open Note by Title" })

vim.keymap.set("n", "<leader>zs", function()
  require("snacks").picker("grep", {
    cwd = "~/.local/.src/zettlekasten",
  })
end, { desc = "Search Note Contents" })

vim.keymap.set("n", "<leader>zr", function()
  require("snacks").picker("oldfiles", { cwd = "~/.local/.src/zettlekasten" })
end, { desc = "Recent Notes" })

vim.keymap.set("v", "<leader>zg", notes.search_visual, { desc = "Grep Visual Selection" })

vim.keymap.set("n", "<leader>zi", notes.insert_link, { desc = "Insert Wikilink" })

-- Visual mode: move selected lines up/down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Better Yanking to system clipboard
vim.keymap.set({ "n", "v" }, "y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "Y", [["+Y]], { desc = "Yank line to system clipboard" })

vim.keymap.set("n", "<leader>Y", 'gg"+yG', { desc = "Yank Entire File" })
vim.keymap.set("n", "<leader>P", "o<ESC>Pk", { desc = "Paste Line Above" })

vim.keymap.set("n", "<leader>D", "''_d", { desc = "Delete (No Yank)" })
vim.keymap.set("v", "<leader>D", "''_d", { desc = "Delete (No Yank)" })

vim.keymap.set("n", "<leader>a", function()
  require("snacks.dashboard").open()
end, { desc = "Dashboard" })

vim.keymap.set("n", "<leader>X", ":!chmod +x %<CR>", { desc = "Make script executable" })
vim.keymap.set("n", "<leader>C", ":w<CR>:!compiler %:p<CR><CR>", { desc = "Doc Compiler", silent = true })
vim.keymap.set("n", "<leader>o", ":!opout <c-r>%<CR><CR>", { desc = "opout", silent = true })
