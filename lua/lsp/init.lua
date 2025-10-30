vim.lsp.enable({
 "clangd",
 "pyright",
 "lua_ls",
 "rust_analyzer",
 "ocamllsp"
})

--Apply Lua configs, for some reason just lsp.enable does 
--not automatically do it
local lua_ls_opts = require("lsp.lua_ls")
vim.lsp.config('lua_ls', lua_ls_opts)

--clangd configs
local clangd_opts = require("lsp.clangd")
vim.lsp.config('clangd', clangd_opts)
