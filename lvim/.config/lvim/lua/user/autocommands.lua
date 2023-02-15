--Remember last place in file

vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd BufRead * call setpos(".", getpos("'\""))  
    autocmd FileType tex :NoMatchParen  
  augroup end
]]

-- deletes latex build files upon leave
vim.cmd "autocmd VimLeave *.tex !texclear %"

-- recompiles suckless programs after edits
vim.cmd "autocmd BufWritePost *.h silent !compiler %:p"

-- runs compiler script and creates pdf of any .markdown and latex file when it's saved
-- vim.cmd "autocmd BufWritePost *.md silent !compiler %:p"
vim.cmd "autocmd BufWritePost *.tex silent !compiler %:p"

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})

-- start new file in insert mode 
vim.cmd "autocmd Bufnewfile * startinsert"

-- and previously created empty file in insert mode
-- vim.cmd "autocmd VimEnter * if getfsize(expand ('%')) == 0 | startinsert | endif"
-- This messes up 'nvim .'
