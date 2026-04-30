return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  event = "InsertEnter",
  config = function ()
    require("codeium").setup({
      enable_cmp_source = false,
      virtual_text = {
        enabled = true,
        key_bindings = {
          accept = "<C-g>",
          next = "<C-;>",
          prev = "<C-,>",
          dismiss = "<C-x>",
        },
      },
    })
  end,
}
