return {
  "ggandor/leap.nvim",
  opts = {},
  config = function()
    vim.keymap.set({ "n" }, "s", "<Plug>(leap-forward)")
    vim.keymap.set({ "n" }, "S", "<Plug>(leap-backward)")
    vim.keymap.set({ "n" }, "<c-t>", "<Plug>(leap-from-window)")
  end,
}
