local packer = require("packer")

-- config object

packer.use({
	"neovim/nvim-lspconfig",
	config = function()
		-- Language configs
		require("plugins.lsp.go")
		require("plugins.lsp.lua")
	end,
})
