local M = {
  "adalessa/laravel.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
    "nvimtools/none-ls.nvim",
  },
  cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
  -- keys = {
  --   { "<leader>la", ":Laravel artisan<cr>" },
  --   { "<leader>lr", ":Laravel routes<cr>" },
  --   { "<leader>lm", ":Laravel related<cr>" },
  -- },
  event = { "VeryLazy" },
  config = true,
}

return M
