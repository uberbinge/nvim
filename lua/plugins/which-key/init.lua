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

		-- Register all leader based mappings
		wk.register({
			["<Tab>"] = { "<cmd>e#<cr>", "Prev buffer" },
			q = { "<cmd>Neotree reveal toggle<cr>", "Neotree: Toggle Filetree" },
			b = {
				name = "Buffers",
				b = {
					"<cmd>Telescope buffers only_cwd=true<cr>",
					"Find buffer (Current Path)",
				},
				B = {
					"<cmd>Telescope buffers<cr>",
					"Find buffer (All)",
				},
				d = { "<cmd>bd<CR>", "Close buffer" },
				D = {
					"<cmd>%bd|e#|bd#<cr>",
					"Close all but the current buffer",
				},
				f = { "<cmd>Neotree action=focus reveal=true<CR>", "Find file in file explorer" },
			},
			f = {
				name = "Files",
				b = { "<cmd>Telescope file_browser grouped=true cwd=~/workspace<cr>", "File browser" },
				a = { "<cmd>Telescope git_files<cr>", "Find Git File" },
				f = { "<cmd>Telescope find_files<cr>", "Find File" },
				g = { "<cmd>Telescope live_grep<cr>", "Find in File" },
				r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
				s = { "<cmd>w<cr>", "Save Buffer" },
			},
			m = {
				name = "Misc",
				w = { "<cmd>cd %:p:h<cr><cmd>pwd<cr>", "Change to directory of current file" },
				p = { "<cmd>PackerSync --preview<cr>", "PackerSync" },
			},
			s = {
				name = "Search", -- optional group name
				s = { "<cmd>Telescope <cr>", "Search" },
				f = { "<cmd>Telescope find_files hidden=true<cr>", "Find File" },
				g = { "<cmd>Telescope live_grep<cr>", "Find in File" },
				o = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
				r = { "<cmd>Telescope resume<cr>", "Resume last picker" },
				p = { "<cmd>Telescope projects<cr>", "List all projects" },
				b = { "<cmd>Telescope buffers<cr>", "List open buffers" },
			},
		}, { prefix = "<leader>", mode = "n", { silent = true } })
	end,
})
