local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {"gopls"}
    }
}, {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
}, {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
    "ray-x/guihua.lua", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter"},
    config = function()
        require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
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
}, {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "custom.configs.null-ls"
    end,
}, {
    "liuchengxu/vista.vim"
}, {
    "github/copilot.vim"
  }
}

return plugins
