return {
  "nvim-telescope/telescope.nvim",
  keys = {

    {
      "<leader>o",
      "<cmd>Telescope buffers<cr>",
      desc = "find buffers",
    },
    {
      "<leader>.",
      "<cmd>Telescope find_files<cr>",
      desc = "find files",
    },
    {
      "<leader>g",
      "<cmd>Telescope git_files<cr>",
      desc = "find git files",
    },
    {
      "<leader>s",
      "<cmd>Telescope live_grep<cr>",
      desc = "find string across files",
    },
    {
      "<leader>n",
      "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/Documents/Code'}<cr>",
      desc = "find notes",
    },

    {
      "<leader>to",
      "<cmd>Telescope buffers<cr>",
      desc = "open buffers",
    },
    {
      "<leader>t.",
      "<cmd>Telescope find_files<cr>",
      desc = "files",
    },
    {
      "<leader>tg",
      "<cmd>Telescope git_files<cr>",
      desc = "git files",
    },
    {
      "<leader>th",
      "<cmd>Telescope help_tags<cr>",
      desc = "help tags",
    },
    {
      "<leader>tp",
      "<cmd>Telescope oldfiles<cr>",
      desc = "previous files",
    },
    {
      "<leader>ts",
      "<cmd>Telescope live_grep<cr>",
      desc = "string across files",
    },
    {
      "<leader>td",
      "<cmd>Telescope diagnostics<cr>",
      desc = "diagnostics",
    },
    {
      "<leader>tn",
      "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/Documents/Code'}<cr>",
      desc = "notes",
    },
    {
      "<leader>tv",
      "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/.config/nvim'}<cr>",
      desc = "nvim configs",
    },
    {
      "<leader>tb",
      "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/.config/kickstart-nvim'}<cr>",
      desc = "nvim backup configs",
    },
  },
}
