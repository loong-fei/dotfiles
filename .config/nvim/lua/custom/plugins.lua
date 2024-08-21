local plugins = {{
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {"gopls"}
    }
}, {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
    "ray-x/guihua.lua", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter"},
    config = function()
        require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}, {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
}, {
    "ldelossa/gh.nvim",
    dependencies = {{
        "ldelossa/litee.nvim",
        config = function()
            require("litee.lib").setup()
        end
    }},
    config = function()
        require("litee.gh").setup()
    end
}, {
    "ruifm/gitlinker.nvim",
    dependencies = {"nvim-lua/plenary.nvim"}
}, {"sbdchd/neoformat"}}

return plugins
