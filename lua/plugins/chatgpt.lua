return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/tiago-pires/GPTPrompts/main/prompts.csv",
      keymaps = {
        close = "<C-c>",
        yank_last = "<C-y>",
        yank_last_code = "<C-k>",
        scroll_up = "<C-u>",
        scroll_down = "<C-d>",
        new_session = "<C-n>",
        cycle_windows = "<Tab>",
        cycle_modes = "<C-f>",
        next_message = "<C-j>",
        prev_message = "<C-k>",
        select_session = "<Space>",
        rename_session = "r",
        delete_session = "d",
        draft_message = "<C-r>",
        edit_message = "e",
        delete_message = "d",
        toggle_settings = "<C-o>",
        toggle_sessions = "<C-p>",
        toggle_help = "<c-m>",
        toggle_message_role = "<C-r>",
        toggle_system_role_open = "<C-s>",
        stop_generating = "<C-x>",
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
