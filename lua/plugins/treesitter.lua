local languages = { "c", "cpp", "rust", "lua", "python", "ocaml", "typescript" ,"cmake", "make" }
return {
{
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	branch = "main",
	build = ":TSUpdate",

	config = function()
	    --install the needed parsers, basically ensure_installed
	    require("nvim-treesitter").install(languages)
	    require('nvim-treesitter').setup({
		install_dir = vim.fn.stdpath('data') .. '/site',
	    })


	    vim.api.nvim_create_autocmd("FileType", {
		group = vim.api.nvim_create_augroup("treesitter.setup", { clear = true }),
		callback = function(args)
		    local buf = args.buf
		    local ft = args.match

		    -- Try to get a valid language name
		    local ok, lang = pcall(vim.treesitter.language.get_lang, ft)
		    if not ok then
			lang = ft
		    end 

		    -- Try to start treesitter highlighting + indent
		    pcall(vim.treesitter.start, buf, lang)

		    -- Folding (window-local)
		    vim.api.nvim_set_option_value("foldmethod", "expr", { win = 0 })
		    vim.api.nvim_set_option_value("foldexpr", "v:lua.vim.treesitter.foldexpr()", { win = 0 })
		    vim.api.nvim_set_option_value("foldenable", false, { win = 0 })
		    vim.api.nvim_set_option_value("foldlevel", 99, { win = 0 })
		end,
	    })

	    -- Global foldlevelstart 
	    vim.o.foldlevelstart = 99

	end,
    }
}
