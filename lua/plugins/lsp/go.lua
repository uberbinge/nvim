local nvim_lsp = require("lspconfig")
local fn = require("functions")
local cmp = require("plugins.nvim-cmp.init")

-- LSP config
nvim_lsp.gopls.setup({
	on_attach = fn.on_attach,
	capabilities = cmp.capabilities,
	settings = {
		gopls = {
			usePlaceholders = true,
			gofumpt = true,
			analyses = {
				shadow = true,
				unusedparams = true,
				unusedwrite = true,
				nilness = true,
			},
			staticcheck = true,
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
		},
	},
})
