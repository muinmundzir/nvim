local M = {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
    "gbprod/none-ls-php.nvim",
  },
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    debug = true,
    sources = {
      require("none-ls.code_actions.eslint_d"),
      require("none-ls.diagnostics.eslint_d"),
      require("none-ls.formatting.eslint_d"),
      require("none-ls-php.diagnostics.php"),
      formatting.stylua,
      formatting.prettierd,
      formatting.prettierd.with {
        extra_filetypes = { "toml" },
        extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" },
      },
      formatting.eslint_d,
      -- null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.completion.spell,
      null_ls.builtins.formatting.phpactor,
    },
  }
end

return M
