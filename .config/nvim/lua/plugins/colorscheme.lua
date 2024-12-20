return {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function ()
        require("everforest").setup({
            background = "dark",
            transparent_background_level = 1,
        })
        vim.cmd("colorscheme everforest")
    end,
}
