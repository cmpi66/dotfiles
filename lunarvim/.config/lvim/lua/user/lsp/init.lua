local ih = require("inlay-hints")
local lspconfig = require("lspconfig")

lspconfig.sumneko_lua.setup({
  on_attach = function(c, b)
    ih.on_attach(c, b)
  end,
  settings = {
    Lua = {
      hint = {
        enable = true,
      },
    },
  },
})



