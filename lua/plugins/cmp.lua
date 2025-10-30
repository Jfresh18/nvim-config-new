return {
    'hrsh7th/nvim-cmp',
    dependencies = {
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline'
    },
    config = function()
	local cmp = require('cmp')

	cmp.setup({
	    snippet = {
		expand = function(args)
		    require('luasnip').lsp_expand(args.body)
		end,
	    },

	    window = {
		completion = cmp.config.window.bordered({
		    border = "rounded"
		}),
		documentation = cmp.config.window.bordered({
		    border = "rounded"
		}),
	    },

	    mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping(function(fallback)
		    if cmp.visible() then
			cmp.select_next_item()
		    else
			fallback()
		    end
		end, { 'i', 's' }),

		['<S-Tab>'] = cmp.mapping(function(fallback)
		    if cmp.visible() then
			cmp.select_prev_item()
		    else
			fallback()
		    end
		end, { 'i', 's' }),
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-g>'] = cmp.mapping.complete(),
		['<C-a>'] = cmp.mapping.abort(),
		['<Enter>'] = cmp.mapping.confirm({ select = false })
	    }),

	    sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	    }, {
		{ name = 'buffer' },
	    })
	})

	cmp.setup.cmdline({ '/', '?' }, {
	    mapping = cmp.mapping.preset.cmdline(),
	    sources = {
		{ name = 'buffer' }
	    }
	})

	cmp.setup.cmdline(':', {
	    mapping = cmp.mapping.preset.cmdline(),
	    sources = cmp.config.sources({
		{ name = 'path' }
	    }, {
		{ name = 'cmdline' }
	    }),
	    matching = { disallow_symbol_nonprefix_matching = false }
	})

    end

}
