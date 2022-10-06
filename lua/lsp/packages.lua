local packer = require("packer")

-- config object

packer.use({
	"neovim/nvim-lspconfig",
	config = function()
		-- Language configs
		require("lsp.languages_go")
	end,
})
