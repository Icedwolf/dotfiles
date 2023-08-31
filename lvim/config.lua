vim.o.termguicolors = true
vim.opt.shiftwidth = 4
vim.g.loaded_perl_provider = 0
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.g.python3_host_prog = "/usr/sbin/python3"
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', { noremap = true, silent = true })
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.cmd 'hi StatusLine guibg=NONE ctermbg=NONE'
    end,
})

lvim.colorscheme = "blue"
lvim.log.level = "warning"
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.treesitter.highlight.enabled = true

-- Ctlr-p to open registers on telescope
lvim.keys.normal_mode["<C-p>"] = false
lvim.keys.normal_mode["<C-p>"] = "<cmd>Telescope registers<cr>"

-- transparency
lvim.transparent_window = true
local auto_theme_custom = require('lualine.themes.auto')
auto_theme_custom.normal.c.bg = 'none'

lvim.format_on_save = {
    enabled = true,
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

lvim.plugins = {
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
    { "tpope/vim-repeat" },
    {
        "tpope/vim-surround",
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                panel = {
                    enabled = true,
                    auto_refresh = true,
                    keymap = {
                        jump_prev = "[[",
                        jump_next = "]]",
                        accept = "<CR>",
                        refresh = "gr",
                        open = "<M-CR>"
                    },
                    layout = {
                        position = "bottom",
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
                    names = true,
                    rgb_fn = true,
                    hsl_fn = true,
                    css = true,
                    mode = "background",
                }
            })
        end,
    },
    { "mattn/efm-langserver" },
}
