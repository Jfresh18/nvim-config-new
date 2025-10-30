-- lsp/ocamllsp.lua
return {
    -- Point to the Mason-installed ocamllsp binary
    cmd = { vim.fn.stdpath("data") .. "/mason/bin/ocamllsp" },
    
    filetypes = { "ocaml", "menhir", "ocamlinterface", "ocamllex", "reason", "dune" },

    -- Optional: root markers for your project
    root_markers = { "dune-project", "dune-workspace", ".git" },

    -- Example of language-specific settings
    settings = {
        ocamllsp = {
            -- Enable formatting
            formatting = true,
            -- You can add more ocamllsp-specific options here
        }
    }
}
