vim.lsp.enable({
 "clangd",
 "pyright",
 "lua_ls",
 "rust_analyzer",
 "ocamllsp",
 "ts_ls"
})

--Apply Lua configs, for some reason just lsp.enable does 
--not automatically do it
local lua_ls_opts = require("lsp.lua_ls")
vim.lsp.config('lua_ls', lua_ls_opts)

--clangd configs
local clangd_opts = require("lsp.clangd")
vim.lsp.config('clangd', clangd_opts)

--ocamllsp configs
local ocamllsp_opts = require("lsp.ocamllsp")
vim.lsp.config('ocamllsp', ocamllsp_opts)

--rust_analyzer configs
local rust_analyzer_opts = require("lsp.rust_analyzer")
vim.lsp.config('rust_analyzer', rust_analyzer_opts)

--pyright configs
local pyright_opts = require("lsp.pyright")
vim.lsp.config('pyright', pyright_opts)

