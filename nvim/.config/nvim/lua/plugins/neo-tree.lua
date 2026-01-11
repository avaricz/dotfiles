return {
   	 "nvim-neo-tree/neo-tree.nvim",
    	branch = "v3.x",
    	dependencies = {
		"nvim-lua/plenary.nvim",
      		"MunifTanjim/nui.nvim",
      		"nvim-tree/nvim-web-devicons", -- optional, but recommended
    	},
	config = function()
		vim.keymap.set('n', '<C-n>', function()
			vim.cmd('Neotree filesystem toggle left reveal')
		end, { desc = 'Toggle Neo-tree' })
		vim.keymap.set(
		  'n',
		  '<leader>n',
		  '<cmd>Neotree filesystem focus left<CR>',
  		{ desc = 'Focus Neo-tree' }
	)
	end,
	lazy = false, -- neo-tree will lazily load itself
}

