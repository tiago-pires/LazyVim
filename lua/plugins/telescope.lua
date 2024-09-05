return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local builtin = require("telescope.builtin")
    local action_state = require("telescope.actions.state")
    local actions = require("telescope.actions")

    local buffer_searcher
    buffer_searcher = function()
      builtin.buffers({
        sort_mru = true,
        ignore_current_buffer = true,
        show_all_buffers = false,
        attach_mappings = function(prompt_bufnr, map)
          local refresh_buffer_searcher = function()
            actions.close(prompt_bufnr)
            vim.schedule(buffer_searcher)
          end
          local delete_buf = function()
            local selection = action_state.get_selected_entry()
            vim.api.nvim_buf_delete(selection.bufnr, { force = true })
            refresh_buffer_searcher()
          end
          local delete_multiple_buf = function()
            local picker = action_state.get_current_picker(prompt_bufnr)
            local selection = picker:get_multi_selection()
            for _, entry in ipairs(selection) do
              vim.api.nvim_buf_delete(entry.bufnr, { force = true })
            end
            refresh_buffer_searcher()
          end
          map("n", "dd", delete_buf)
          map("n", "<C-d>", delete_multiple_buf)
          map("i", "<C-d>", delete_multiple_buf)
          return true
        end,
      })
    end
  end,
  keys = {

    {
      "<c-e>",
      "<cmd>Telescope buffers<cr>",
      desc = "find buffers",
    },
    {
      "<c-p>",
      "<cmd>Telescope find_files<cr>",
      desc = "find files",
    },
    {
      "<c-n>",
      "<cmd>Telescope current_buffer_fuzzy_find<cr>",
      desc = "fuzzy find buffer",
    },
    {
      "<leader>to",
      "<cmd>Telescope oldfiles<cr>",
      desc = "old files",
    },
    {
      "<leader>sn",
      "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/Documents/Code'}<cr>",
      desc = "find notes",
    },
    {
      "<leader>sf",
      "<cmd>:lua require('telescope.builtin').find_files {cwd = '~/Documents/Philosophy/'}<cr>",
      desc = "find philosophy notes",
    },
  },
}
