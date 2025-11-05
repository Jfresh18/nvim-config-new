local function set_transparent()
    for _, group in ipairs({
        "Normal",
        "NormalNC",
--        "NormalFloat",
--        "FloatBorder",
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
        'maxmx03/fluoromachine.nvim',
        lazy = false,
        priority = 1000,
        config = function ()
         local fm = require 'fluoromachine'

         fm.setup {
            glow = false,
            theme = 'fluoromachine',
            transparent = true,
         }

         vim.cmd.colorscheme 'fluoromachine'
         set_transparent()
        end
    }
}
