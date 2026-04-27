return {
  "HakonHarnes/img-clip.nvim",
  ft = { "markdown" },
  opts = {
    default = {
      dir_path = "assets",           -- saves images in ./assets/ relative to your file
      file_name = "%Y-%m-%d-%H-%M-%S", -- timestamp filename
      use_absolute_path = false,
      prompt_for_file_name = false,
    },
  },
  keys = {
    { "<leader>mi", "<cmd>PasteImage<cr>", desc = "Paste Image from Clipboard" },
  },
}
