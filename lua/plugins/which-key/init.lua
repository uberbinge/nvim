local packer = require("packer")

-- Keymap highlighting
packer.use({
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.setup()

		-- global keymaps
		wk.register({
			b = {
				name = "buffer",
				d = { "<cmd>bd<CR>", "delete", noremap = true },
			},
		}, {
			mode = "n",
			prefix = "<leader>",
		})
	end,
})

local wk = require("which-key")
local default_options = { silent = true }

-- Register all leader based mappings
wk.register({
	["<Tab>"] = { "<cmd>e#<cr>", "Prev buffer" },
	b = {
		name = "Buffers",
		b = {
			"<cmd>Telescope buffers<cr>",
			"Find buffer",
		},
		D = {
			"<cmd>%bd|e#|bd#<cr>",
			"Close all but the current buffer",
		},
		d = { "<cmd>lua MiniBufremove.delete()<CR>", "Close buffer" },
	},
	f = {
		name = "Files",
		b = { "<cmd>Telescope file_browser grouped=true<cr>", "File browser" },
		p = { "<cmd>Neotree reveal toggle<cr>", "Toggle Filetree" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		s = { "<cmd>w<cr>", "Save Buffer" },
		z = { "<cmd>Telescope zoxide list<CR>", "Zoxide" },
	},
	g = { "Git" },
	m = {
		name = "Misc",
		c = { "<cmd>lua require('functions').toggle_colorcolumn()<cr>", "Toggle Colorcolumn" },
		C = { "<cmd>:CBcatalog<cr>", "Commentbox Catalog" },
		d = { "<cmd>lua require('functions').toggle_diagnostics()<cr>", "Toggle Diagnostics" },
		i = { "<cmd>IlluminateToggle<cr>", "Toggle Illuminate" },
		l = { "<cmd>source ~/.config/nvim/snippets/*<cr>", "Reload snippets" },
		o = { "Options" },
		p = { "<cmd>PackerSync --preview<cr>", "PackerSync" },
		s = { "<cmd>SymbolsOutline<cr>", "Toggle SymbolsOutline" },
	},
	q = {
		name = "Quickfix",
		j = { "<cmd>cnext<cr>", "Next Quickfix Item" },
		k = { "<cmd>cprevious<cr>", "Previous Quickfix Item" },
		q = { "<cmd>lua require('functions').toggle_qf()<cr>", "Toggle quickfix list" },
		t = { "<cmd>TodoQuickFix<cr>", "Show TODOs" },
	},
	s = { "Search" },
	w = { "Windows" },
	x = {
		name = "LanguageTool",
		c = { "<cmd>GrammarousCheck<cr>", "Grammar check" },
		i = { "<Plug>(grammarous-open-info-window)", "Open the info window" },
		r = { "<Plug>(grammarous-reset)", "Reset the current check" },
		f = { "<Plug>(grammarous-fixit)", "Fix the error under the cursor" },
		x = {
			"<Plug>(grammarous-close-info-window)",
			"Close the information window",
		},
		e = {
			"<Plug>(grammarous-remove-error)",
			"Remove the error under the cursor",
		},
		n = {
			"<Plug>(grammarous-move-to-next-error)",
			"Move cursor to the next error",
		},
		p = {
			"<Plug>(grammarous-move-to-previous-error)",
			"Move cursor to the previous error",
		},
		d = {
			"<Plug>(grammarous-disable-rule)",
			"Disable the grammar rule under the cursor",
		},
	},
	z = { "Spelling" },
}, { prefix = "<leader>", mode = "n", default_options })
