return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", ",a", function()
      harpoon:list():add()
    end, { desc = "Add to Harpoon" })
    vim.keymap.set("n", ",o", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Open Harpoon" })

    vim.keymap.set("n", ",h", function()
      harpoon:list():select(1)
    end, { desc = "File at 1" })
    vim.keymap.set("n", ",t", function()
      harpoon:list():select(2)
    end, { desc = "File at 2" })
    vim.keymap.set("n", ",n", function()
      harpoon:list():select(3)
    end, { desc = "File at 3" })
    vim.keymap.set("n", ",s", function()
      harpoon:list():select(4)
    end, { desc = "File at 4" })
    vim.keymap.set("n", ",g", function()
      harpoon:list():select(5)
    end, { desc = "File at 5" })
    vim.keymap.set("n", ",c", function()
      harpoon:list():select(6)
    end, { desc = "File at 6" })
    vim.keymap.set("n", ",r", function()
      harpoon:list():select(7)
    end, { desc = "File at 7" })
    vim.keymap.set("n", ",l", function()
      harpoon:list():select(8)
    end, { desc = "File at 8" })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", ",p", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", ",n", function()
      harpoon:list():next()
    end)
  end,
  dependencies = { "nvim-lua/plenary.nvim" },
}
