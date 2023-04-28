local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  keys = function()
    return {
      { "<leader>fg", Util.telescope("live_grep"), desc = "Find Grep (root dir)" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
      { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Find Key Maps" },
      { "<leader>fd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Find Document diagnostics" },
      { "<leader>ff", Util.telescope("files"), desc = "Find Files (root dir)" },
      { "<leader>fp", "<cmd>Telescope projects <CR>", desc = "Find projects" },
    }
  end,
}
