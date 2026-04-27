return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  ft = { "markdown" },
  init = function()
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_open_to_the_world = 0
    vim.g.mkdp_theme = "light"
  end,
  keys = {
    { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" },
  },
}
