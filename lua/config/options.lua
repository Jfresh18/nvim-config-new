vim.opt.winborder = "rounded"
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamed"
vim.diagnostic.config({
    signs = {
	text = {
	    [vim.diagnostic.severity.ERROR] = "",
	    [vim.diagnostic.severity.WARN]  = "",
	    [vim.diagnostic.severity.HINT]  = "",
	    [vim.diagnostic.severity.INFO]  = "",
	},
    },
    virtual_text = {
	enable = false,
	prefix = "●",
	spacing = 2,
	source = "if_many",
    },
})
