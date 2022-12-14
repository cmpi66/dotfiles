
-- require("ltex").setup({
--   -- can be "telescope", "fzf" or "select" (`vim.ui.select`)
--   -- it's recommended to use "telescope" or "fzf"

--   lsp = {
--     -- `config` is passed to `vim.lsp.start_client(config)`
--     config = {
--       cmd = { "ltex-ls"  },
--       name = "ltex-ls",
--       -- on_attach = ...
--       -- etc, see `:h vim.lsp.start_client()`
--     },

--     -- automatically attach buffers in a zk notebook that match the given filetypes
--     auto_attach = {
--       enabled = true,
--       filetypes = { "markdown" },
--       flags = { debounce_text_changes = 300 },
--     },
--   },
-- -- require("zk.commands").get("ZkNew")({ dir = "emanotes" }),
-- -- require("zk.commands").get("ZkNewFromTitleSelection")()

-- })



-- local opts = {}
-- require("lspconfig")["ltex"].setup(opts)
-- -- require('lspconfig')['ltex']({ 
-- ({
--   on_attach = on_attach,
--   cmd = { "ltex-ls" },
--   filetypes = { "markdown", "text" },
--   flags = { debounce_text_changes = 300 },
-- })



require("ltex").setup({
  -- can be "telescope", "fzf" or "select" (`vim.ui.select`)
  -- it's recommended to use "telescope" or "fzf"
  picker = "select",

  lsp = {
    -- `config` is passed to `vim.lsp.start_client(config)`
    config = {
      cmd = { "ltex-ls", "lsp" },
      name = "ltex",
      -- on_attach = ...
      -- etc, see `:h vim.lsp.start_client()`
    },

    -- automatically attach buffers in a zk notebook that match the given filetypes
    auto_attach = {
      enabled = true,
      filetypes = { "markdown" },
    },
  },
-- require("zk.commands").get("ZkNew")({ dir = "emanotes" }),
-- require("zk.commands").get("ZkNewFromTitleSelection")()

})
