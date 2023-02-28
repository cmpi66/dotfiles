-- reload "user.catppuccin"
reload "user.tokyonight"
-- reload "user.kanagawa"
reload "user.plugins"
reload "user.autocommands"
reload "user.telescope"
reload "user.keymaps"
reload "user.whichkey"
reload "user.options"
reload "user.builtins"
reload "user.colorscheme"
reload "user.lsp"
reload "user.abbreviations"
reload "user.colorizer"
-- reload "user.hop"
reload "user.bqf"
reload "user.numb"
reload "user.jaq"
reload "user.surround"
-- reload "user.treesitter"
reload "user.quickscope"
reload "user.true-zen"
reload "user.lsp-inlayhints"
reload "user.twilight"
reload "user.zen-mode"
reload "user.neoscroll"
-- reload "user.fidget"
reload "user.auto-session"
reload "user.harpoon"
reload "user.zk"
-- reload "user.wilder"
-- reload "user.chatgpt"
-- reload "user.tabline"
-- reload "user.ltex"
-- reload "user.lualine"
lvim.builtin.treesitter.rainbow.enable = true
--
--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!reloads `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- local opts = {}
-- reload("lvim.lsp.manager").setup("ltex", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!reloads `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })


