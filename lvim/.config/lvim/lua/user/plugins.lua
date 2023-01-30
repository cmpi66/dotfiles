lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
   { "folke/zen-mode.nvim"},
   { "folke/twilight.nvim"},
   { "preservim/vim-pencil"},
   { "phaazon/hop.nvim"},
   {	"Pocco81/true-zen.nvim"},
   { "p00f/nvim-ts-rainbow"},
   { "norcalli/nvim-colorizer.lua"},
   {"karb94/neoscroll.nvim"},
   {"simrat39/rust-tools.nvim"},
   {"lvimuser/lsp-inlayhints.nvim"},
   {"kevinhwang91/nvim-bqf"},
   -- {"kylechui/nvim-surround"},
   {"nacro90/numb.nvim"},
   {"is0n/jaq-nvim"},
  ({
    "catppuccin/nvim",
    as = "catppuccin"
  }),
   {"j-hui/fidget.nvim"},
  -- Session
   {"rmagatti/auto-session"},
   {"rmagatti/session-lens"},
   { "unblevable/quick-scope"},
   {"christianchiarulli/harpoon"},
   {"mickael-menu/zk-nvim"},
{
  "andymass/vim-matchup",
  event = "CursorMoved",
  config = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,
},
  {"ThePrimeagen/vim-be-good"}
  -- {"christianchiarulli/lualine.nvim"}

	-- {'kdheepak/tabline.nvim'}

}

