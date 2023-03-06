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
  ({
    "catppuccin/nvim",
    as = "catppuccin"
  }),
  -- {"Mofiqul/dracula.nvim"},
   { "unblevable/quick-scope"},
   {"lunarvim/templeos.nvim"},
   {"j-hui/fidget.nvim"},

  -- Session
   {"rmagatti/auto-session"},
   {"rmagatti/session-lens"},
   {"christianchiarulli/harpoon"},
   {"mickael-menu/zk-nvim"},
 {
  "andymass/vim-matchup",
  event = "CursorMoved",
  config = function()
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,
},
  {
  "tpope/vim-fugitive",
  cmd = {
    "G",
    "Git",
    "Gdiffsplit",
    "Gread",
    "Gwrite",
    "Ggrep",
    "GMove",
    "GDelete",
    "GBrowse",
    "GRemove",
    "GRename",
    "Glgrep",
    "Gedit"
  },
  ft = {"fugitive"}
},
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
  {"MunifTanjim/nui.nvim"},
  {"folke/noice.nvim"},
  {"windwp/nvim-spectre"},
  {"rcarriga/nvim-notify"},
  {"christoomey/vim-tmux-navigator"},
  {"tpope/vim-repeat"}

}

