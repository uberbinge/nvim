local nvim_lsp = require("lspconfig")
local fn = require("functions")
local cmp = require("plugins.nvim-cmp")

nvim_lsp.tsserver.setup({
	on_attach = fn.on_attach,
	capabilities = cmp.capabilities,
})
