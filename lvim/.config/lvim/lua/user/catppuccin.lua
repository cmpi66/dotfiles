require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    transparent_background = false,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {"bold"},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        illuminate = true,
        markdown = true,
        -- hop = true,
        mason = true,
        treesitter_context = true,
        ts_rainbow = true,
        lsp_trouble = true,
        vimwiki = true,
        which_key = true,

          dap = {
            enabled = true,
            enable_ui = true,
        },
          indent_blankline = {
            enabled = true,
            colored_indent_levels = true,
        },
          native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
           underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
        },
           navic = {
             enabled = true,
             custom_bg = "NONE",
        },

    },
})


vim.api.nvim_command "colorscheme catppuccin"


