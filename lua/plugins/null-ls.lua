return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local util = require("util")
      local nls = require("null-ls")
      local fmt = nls.builtins.formatting
      local dgn = nls.builtins.diagnostics
      opts.root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", ".git")

      vim.list_extend(opts.sources, {
        fmt.eslint_d.with({
          condition = function()
            return util.executable("eslint_d", true)
              and not vim.tbl_isempty(vim.fs.find({
                ".eslintrc",
                ".eslintrc.js",
                ".eslintrc.cjs",
                ".eslintrc.json",
                ".eslintrc.yaml",
                ".eslintrc.yml",
              }, { path = vim.fn.expand("%:p"), upward = true }))
          end,
        }),

        fmt.prettierd.with({
          filetypes = { "graphql", "html", "json", "markdown", "yaml" },
          condition = function()
            return util.executable("prettierd", true)
          end,
        }),

        fmt.shfmt.with({
          condition = function()
            return util.executable("shfmt", true)
          end,
        }),

        fmt.stylua.with({
          condition = function()
            return util.executable("stylua", true)
              and not vim.tbl_isempty(
                vim.fs.find({ ".stylua.toml", "stylua.toml" }, { path = vim.fn.expand("%:p"), upward = true })
              )
          end,
        }),

        dgn.eslint_d.with({
          condition = function()
            return util.executable("eslint_d", true)
              and not vim.tbl_isempty(vim.fs.find({
                ".eslintrc",
                ".eslintrc.js",
                ".eslintrc.cjs",
                ".eslintrc.json",
                ".eslintrc.yaml",
                ".eslintrc.yml",
              }, { path = vim.fn.expand("%:p"), upward = true }))
          end,
        }),

        dgn.markdownlint.with({
          condition = function()
            return util.executable("markdownlint", true)
          end,
        }),

        dgn.shellcheck.with({
          condition = function()
            return util.executable("shellcheck", true)
          end,
        }),

        dgn.selene.with({
          condition = function(utils)
            return utils.root_has_file({ "selene.toml" }) and util.executable("selene", true)
          end,
        }),

        dgn.actionlint.with({
          condition = function()
            return util.executable("actionlint", true)
          end,
        }),
      })
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufRead", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    opts = {
      ensure_installed = {},
      automatic_installation = true,
    },
    config = true,
  },
}
