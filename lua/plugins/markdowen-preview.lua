return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  opts = {
    disable_filename = 1,
  },
  ft = { "markdown" },
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
}
