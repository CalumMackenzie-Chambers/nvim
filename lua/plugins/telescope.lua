local Util = require("lazyvim.util")

return {
    {
        "nvim-telescope/telescope.nvim",
        keys = function()
            return {
                { "<leader>ff", Util.telescope("files"), desc = "Find Files (root dir)" },
                { "<leader>fg", Util.telescope("live_grep"), desc = "Find in Files (Grep)" },
                { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
                { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
                { "<leader>fc", "<cmd>Telescope git_commits<cr>", desc = "Find in Git Commits" },
            }
        end,
        opts = {
            defaults = {
                file_ignore_patterns = { "node_modules" },
            },
        },
    },
    -- FIX: Telescope project doesn't seem to be working
    {
        "nvim-telescope/telescope-project.nvim",
        keys = {
            {
                "<leader>fp",
                function()
                    require("telescope").extensions.project.project({})
                end,
                desc = "Find projects",
            },
        },
    },
}
