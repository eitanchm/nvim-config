return {
    'nvim-treesitter/nvim-treesitter', tags = "v0.10.0",
    --enabled = false,
    lazy = false,
    build = ':TSUpdate',
    config = function()
        local configs = require("nvim-treesitter.config")
        configs.setup({
            highlight = {
                enable = false,
            },
            indent = { enable = true },
            autotage = { enable = true },
            ensure_installed = {
                "lua",
            },
            auto_install = false,
        })
    end
}
