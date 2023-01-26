return {
    "ThePrimeagen/harpoon",
    keys = {
        {
            "<leader>ha",
            function()
                require("harpoon.mark").add_file()
            end,
            desc = "Harpoon add file",
        },
        {
            "<leader>ht",
            function()
                require("harpoon.ui").toggle_quick_menu()
            end,
            desc = "Harpoon toggle menu",
        },
        {
            "<leader>hn",
            function()
                require("harpoon.ui").nav_file(1)
            end,
            desc = "Goto first file",
        },
        {
            "<leader>he",
            function()
                require("harpoon.ui").nav_file(2)
            end,
            desc = "Goto second file",
        },
        {
            "<leader>ho",
            function()
                require("harpoon.ui").nav_file(3)
            end,
            desc = "Goto third file",
        },
        {
            "<leader>hi",
            function()
                require("harpoon.ui").nav_file(4)
            end,
            desc = "Goto fourth file",
        },
    },
}
