
local M = {}


 function M.get_words()
  return tostring(vim.fn.wordcount().words)
end

return M
