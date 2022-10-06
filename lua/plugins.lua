-- Initialize packer on start
-- must be called before everything else /cite janxyz
local packer = require("packer")

packer.reset()
packer.init({
	display = {
		open_fn = require("packer.util").float,
	},
})

-- Plugin management via Packer
packer.use({ "wbthomason/packer.nvim" })

require("plugins.lsp.init")
