-- ~/.config/nvim/lua/plugins/yaml-lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          settings = {
            yaml = {
              keyOrdering = false, -- Kubernetes hates reordering
              format = {
                enable = false, -- let formatter handle it
              },
              validate = true,
              schemaStore = {
                enable = true,
                url = "https://www.schemastore.org/api/json/catalog.json",
              },
              schemas = {
                ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.30.0-standalone-strict/all.json"] = "/*.yaml",
              },
            },
          },
        },
      },
    },
  },
}
