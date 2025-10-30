return {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    settings = {
	['rust-analyzer'] = {
	    checkOnSave = {
		allTargets = true,
	    },
	    procMacro = {
		enable = true,
	    },
	    diagnostics = {
		enable = true,
	    },
	    inlayHints = {
		enable = true,
		typeHints = true,
		parameterHints = true,
		chainingHints = true,
		lifetimeElisionHints = { enable = true, useParameterNames = true },
		maxLength = 25,
	    },
	    lens = {
		enable = true
	    },
	    hoveractions = {
		enable = true,
		hoverWithActions = true
	    },
	    cargo = {
		allFeatures = true,
		loadOutDirsFromCheck = true,
	    },
	},
    },
}
