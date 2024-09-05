return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        cursorline = true,
        relativenumber = true,
      },
    })
  end,
  keys = {
    { "<leader>.", "<cmd>NvimTreeToggle<cr>", desc = "Toggle NvimTree" },
  },
}
