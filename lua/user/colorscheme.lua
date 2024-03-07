local M = {
  -- "LunarVim/primer.nvim",
  -- "LunarVim/darkplus.nvim",
  -- "Tsuzat/NeoSolarized.nvim",
  -- "craftzdog/solarized-osaka.nvim",
  "catppuccin/nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  opts = {
    transparent_background = true,
    integrations = {
      telescope = true,
      harpoon = true,
      mason = true,
      neotest = true,
      neogit = true,
      noice = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme "catppuccin"
  end
}

-- function M.config()
  -- vim.cmd.colorscheme "primer_dark"
  -- vim.cmd.colorscheme "darkplus"
  -- vim.cmd.colorscheme "NeoSolarized"
  -- vim.cmd.colorscheme "solarized-osaka"
-- end

return M
