return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<C-p>", function()
        builtin.find_files({ hidden = true })
      end, { desc = "Telescope find files" })

      vim.keymap.set("n", "<C-S>", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "Telescope help tags" })
    end,
  }
}

