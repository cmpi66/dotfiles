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

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.cmd "hi link illuminatedWord LspReferenceText"
  end,
})
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "Jaq",
    "qf",
    "help",
    "man",
    "lspinfo",
    "spectre_panel",
    "lir",
    "DressingSelect",
    -- "tsplayground",
    "Markdown",
  },
  callback = function()
    vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR> 
      nnoremap <silent> <buffer> <esc> :close<CR> 
      set nobuflisted 
    ]]
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    vim.cmd "set formatoptions-=cro"
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "Jaq" },
  callback = function()
    vim.cmd [[
      nnoremap <silent> <buffer> <m-r> :close<CR>
      " nnoremap <silent> <buffer> <m-r> <NOP> 
      set nobuflisted 
    ]]
  end,
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "" },
  callback = function()
    local buf_ft = vim.bo.filetype
    if buf_ft == "" or buf_ft == nil then
      vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR> 
      " nnoremap <silent> <buffer> <c-j> j<CR> 
      " nnoremap <silent> <buffer> <c-k> k<CR> 
      set nobuflisted 
    ]]
    end
  end,
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "" },
  callback = function()
    local get_project_dir = function()
      local cwd = vim.fn.getcwd()
      local project_dir = vim.split(cwd, "/")
      local project_name = project_dir[#project_dir]
      return project_name
    end

    vim.opt.titlestring = get_project_dir() .. " - nvim"
  end,
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "term://*" },
  callback = function()
    vim.cmd "startinsert!"
    -- TODO: if java = 2
    vim.cmd "set cmdheight=1"
  end,
})
