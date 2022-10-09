local packer = require("packer")

-- config object

packer.use({
	"neovim/nvim-lspconfig",
	config = function()
		-- Language configs
		require("plugins.lsp.go")
		require("plugins.lsp.lua")
		require("plugins.lsp.typescript")
		require("plugins.lsp.terraform")
		require("plugins.lsp.docker")
		require("plugins.lsp.yaml")
	end,
})
