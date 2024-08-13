local M = {
  "eandrju/cellular-automaton.nvim",
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Comment" },
  }
end

return M
