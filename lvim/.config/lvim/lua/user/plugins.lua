lvim.plugins = {
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
   { "folke/zen-mode.nvim"},
   { "folke/twilight.nvim"},
   { "preservim/vim-pencil"},
   -- { "phaazon/hop.nvim"},
   {	"Pocco81/true-zen.nvim"},
   { "p00f/nvim-ts-rainbow"},
   { "norcalli/nvim-colorizer.lua"},
   {"karb94/neoscroll.nvim"},
   {"simrat39/rust-tools.nvim"},
   {"lvimuser/lsp-inlayhints.nvim"},
   {"kevinhwang91/nvim-bqf"},
   {"kylechui/nvim-surround"},
   {"nacro90/numb.nvim"},
   {"is0n/jaq-nvim"},
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
  {"ThePrimeagen/vim-be-good"},
  {"MunifTanjim/nui.nvim"},

  {
  "windwp/nvim-ts-autotag",
  config = function()
    require("nvim-ts-autotag").setup()
  end,
},
{
  "turbio/bracey.vim",
  cmd = {"Bracey", "BracyStop", "BraceyReload", "BraceyEval"},
  run = "npm install --prefix server",
},
  -- {"MunifTanjim/nui.nvim"},
  -- {"jackMort/ChatGPT.nvim"},

 {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },

 {"ghillb/cybu.nvim"},
{
  "folke/todo-comments.nvim",
  event = "BufRead",
  config = function()
    require("todo-comments").setup()
  end,
},
-- Color Schemes
  ({
    "catppuccin/nvim",
    as = "catppuccin"
  }),

  {"folke/noice.nvim"},
  {"windwp/nvim-spectre"},
  -- {"rcarriga/nvim-notify"},
{"echasnovski/mini.surround"},
{"christoomey/vim-tmux-navigator"},
  {"tpope/vim-repeat"},
{ "TimUntersberger/neogit" },
{ "sindrets/diffview.nvim" },
  { "mxsdev/nvim-dap-vscode-js" },
  { "ggandor/leap.nvim" }
}

