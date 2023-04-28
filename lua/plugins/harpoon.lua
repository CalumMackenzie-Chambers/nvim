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
      desc = "Harpoon quick menu",
    },
    {
      "<leader>hn",
      function()
        require("harpoon.ui").nav_file(1)
      end,
      desc = "Harpoon quick menu",
    },
    {
      "<leader>he",
      function()
        require("harpoon.ui").nav_file(2)
      end,
      desc = "Harpoon quick menu",
    },
    {
      "<leader>ho",
      function()
        require("harpoon.ui").nav_file(3)
      end,
      desc = "Harpoon quick menu",
    },
    {
      "<leader>hi",
      function()
        require("harpoon.ui").nav_file(4)
      end,
      desc = "Harpoon quick menu",
    },
  },
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
  },
}
