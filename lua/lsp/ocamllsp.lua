return {
    cmd = { vim.fn.stdpath("data") .. "/mason/bin/ocamllsp" },

    filetypes = { "ocaml", "menhir", "ocamlinterface", "ocamllex", "reason", "dune" },

    root_markers = { "dune-project", "dune-workspace", ".git" },

    settings = {
        ocamllsp = {
            formatting = true,
        }
    }
}
