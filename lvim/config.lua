vim.o.termguicolors = true
vim.opt.shiftwidth = 4
vim.g.loaded_perl_provider = 0
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.g.python3_host_prog = "/usr/sbin/python3"
lvim.colorscheme = "industry"
lvim.log.level = "info"
lvim.transparent_window = true
local auto_theme_custom = require('lualine.themes.auto')
auto_theme_custom.normal.c.bg = 'none'
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.cmd 'hi StatusLine guibg=NONE ctermbg=NONE'
    end,
})

-- i want a way to turn my lunarvim bottom bar transparent
lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
}

lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
    "php",
}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.plugins = {
    {
        'wfxr/minimap.vim',
        cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
        config = function()
            vim.cmd("let g:minimap_width = 10")
            vim.cmd("let g:minimap_auto_start = 1")
            vim.cmd("let g:minimap_auto_start_win_enter = 1")
        end,
    },
    {
        "sindrets/diffview.nvim",
        event = "BufRead",
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
        ft = { "fugitive" }
    },
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    {
        "npxbr/glow.nvim",
        ft = { "markdown" }
    },
    { "tpope/vim-repeat" },
    {
        "tpope/vim-surround",
    },
    {
        "ThePrimeagen/refactoring.nvim",
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                panel = {
                    enabled = true,
                    auto_refresh = false,
                    keymap = {
                        jump_prev = "[[",
                        jump_next = "]]",
                        accept = "<CR>",
                        refresh = "gr",
                        open = "<M-CR>"
                    },
                    layout = {
                        position = "bottom", -- | top | left | right
                        ratio = 0.4
                    },
                },
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    debounce = 50,
                    keymap = {
                        accept = "<M-Tab>",
                        accept_word = false,
                        accept_line = false,
                        next = "<M-]>",
                        prev = "<M-[>",
                        dismiss = "<C-]>",
                    },
                },
                filetypes = {
                    ["*"] = true,
                },
            })
        end,
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({
                filetypes = { "*" },
                user_default_options = {
                    RRGGBBAA = true,
                    css = true,
                    AARRGGBB = true,
                    mode = "background",
                }
            })
        end,
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "prettier",
        filetypes = { "typescript", "typescriptreact" },
    },
}

lvim.lsp.automatic_configuration.skipped_servers = {
    lspconfig = {
        filetypes = {
            terraform = "terraform-ls",
            tfvars = "terraform-ls",
        },
        settings = {
            terraform = {
                path = "/usr/sbin/terraform-ls",
            },
        },
    },
}
