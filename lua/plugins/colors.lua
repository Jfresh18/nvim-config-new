local function set_transparent()
    for _, group in ipairs({
        "Normal",
        "NormalNC",
        "NormalFloat",
        "FloatBorder",
        "SignColumn",
        "LineNr",
        "CursorLineNr",
	"CursorLine",
        "StatusLine",
        "StatusLineNC",
        "EndOfBuffer",
    }) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
end

return {
    {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function() 
	    vim.cmd("colorscheme kanagawa-wave")
	    set_transparent()
	end
    }
}
