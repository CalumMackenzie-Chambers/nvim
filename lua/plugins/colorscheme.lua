return {
    {
        "sainnhe/everforest",
        init = function()
            vim.g.everforest_better_performance = 1
            vim.g.everforest_enable_italic = 1
            vim.g.everforest_transparent_background = 1
            vim.g.everforest_diagnostic_text_highlight = 1
            vim.g.everforest_disable_terminal_colors = 1
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
        },
    },
}
