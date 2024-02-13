
return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        -- config = true,
        opts = {
            contrast = 'hard',
        },
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    "tpope/vim-fugitive",
    "tpope/vim-surround",
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end,
        opts = {
            -- add any options here
        },
        lazy = false,
    },
}
