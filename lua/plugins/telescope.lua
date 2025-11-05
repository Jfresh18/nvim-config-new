local function setBG()
    vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg='#1c1830' })
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg='#1c1830', fg='#8e44ad' })
    --other fg = #5a6c8c
    --other bg = #1f2335
end
return {
    {
	'nvim-telescope/telescope.nvim', 
	branch = "fix/nvim-treesitter-main-branch-compatibility",
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function() 
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	    setBG()
	end
    }
}
