return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = function()
    return {
      {
        "<leader>e",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
        end,
        desc = "Explorer NeoTree (root dir)",
      },
    }
  end,
  opts = {
    source_selector = {
      winbar = true,
    },
    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "ﰊ",
        default = "*",
        highlight = "NeoTreeFileIcon",
      },
      modified = {
        symbol = "[+]",
        highlight = "NeoTreeModified",
      },
      name = {
        trailing_slash = false,
        use_git_status_colors = true,
        highlight = "NeoTreeFileName",
      },
      git_status = {
        symbols = {
          added = "",
          modified = "",
          deleted = "✖",
          renamed = "",
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "",
        },
      },
    },
    filesystem = {
      components = {
        harpoon_index = function(config, node)
          local Marked = require("harpoon.mark")
          local path = node:get_id()
          local succuss, index = pcall(Marked.get_index_of, path)
          if succuss and index and index > 0 then
            return {
              text = string.format("  %d ", index),
              highlight = config.highlight or "NeoTreeDirectoryIcon",
            }
          else
            return {}
          end
        end,
      },
      renderers = {
        file = {
          { "icon" },
          { "name", use_git_status_colors = true },
          { "harpoon_index" },
          { "diagnostics" },
          { "git_status", highlight = "NeoTreeDimText" },
        },
      },
      filtered_items = {
        visible = true, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = false, -- only works on Windows for hidden files/directories
        hide_by_name = {
          "node_modules",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          ".gitignore",
          ".env",
          ".github",
        },
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          ".DS_Store",
          ".git",
        },
      },
    },
  },
}
