local packer = require("packer")

-- Keymap highlighting
packer.use({
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.setup({
			layout = {
				align = "left",
			},
		})

		-- global keymaps

		local default_options = { silent = true }

		-- Register all leader based mappings
		wk.register({
			["<Tab>"] = { "<cmd>e#<cr>", "Prev buffer" },
			["t"] = { "<cmd>ToggleTerm<cr>", "Terminal" },
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
				d = { "<cmd>bd<CR>", "Close buffer" },
				f = { "<cmd>Neotree action=focus reveal=true<CR>", "Find file in file explorer", noremap = true },

			},
			f = {
				name = "Files",
				b = { "<cmd>Telescope file_browser grouped=true cwd=~/workspace<cr>", "File browser" },
				a = { "<cmd>Telescope git_files<cr>", "Find Git File" },
				f = { "<cmd>Telescope find_files<cr>", "Find File" },
				g = { "<cmd>Telescope live_grep<cr>", "Find in File" },
				p = { "<cmd>Neotree reveal toggle<cr>", "Toggle Filetree" },
				r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
				s = { "<cmd>w<cr>", "Save Buffer" },
			},
			m = {
				name = "Misc",
				w = { "<cmd>cd %:p:h<cr><cmd>pwd<cr>", "Change to directory of current file", noremap = true },
				o = { "Options" },
				p = { "<cmd>PackerSync --preview<cr>", "PackerSync" },
			},
			s = {
				name = "Search", -- optional group name
				f = { "<cmd>Telescope find_files hidden=true<cr>", "Find File", noremap = true },
				g = { "<cmd>Telescope live_grep<cr>", "Find in File", noremap = true },
				o = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = true },
				r = { "<cmd>Telescope resume<cr>", "Resume last picker", noremap = true },
				p = { "<cmd>Telescope pickers<cr>", "List all pickers", noremap = true },
				b = { "<cmd>Telescope buffers<cr>", "List open buffers", noremap = true },
			},
		}, { prefix = "<leader>", mode = "n", default_options })
	end,
})
