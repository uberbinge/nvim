local nvim_lsp = require("lspconfig")
local fn = require("functions")
local cmp = require("plugins.nvim-cmp.init")

-- LSP config
nvim_lsp.terraformls.setup({
	on_attach = fn.on_attach,
	capabilities = cmp.capabilities,
})
