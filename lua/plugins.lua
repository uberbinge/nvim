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

-- Theme
require("themes.kanagawa.init")
-- Additional Plugins, comment to deactivate
require("plugins.which-key.init")
require("plugins.lsp.init")
require("plugins.git.init")
require("plugins.nvim-cmp.init")
require("plugins.neo-tree.init")
require("plugins.toggleterm.init")
require("plugins.telescope.init")
require("plugins.nvim-treesitter.init")
require("plugins.nvim-autopairs.init")
