local packer = require("packer")

packer.use({
	"lewis6991/gitsigns.nvim",
	config = function()
		local gs = require("gitsigns")
		gs.setup {
			keymaps = {
				-- Default keymap options
				noremap = false
			},
			signs = {
				add = {
					hl = "GitSignsAdd",
					text = "│",
					numhl = "GitSignsAddNr",
					linehl = "GitSignsAddLn"
				},
				change = {
					hl = "GitSignsChange",
					text = "│",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn"
				},
				delete = {
					hl = "GitSignsDelete",
					text = "_",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn"
				},
				topdelete = {
					hl = "GitSignsDelete",
					text = "‾",
					numhl = "GitSignsDeleteNr",
					linehl = "GitSignsDeleteLn"
				},
				changedelete = {
					hl = "GitSignsChange",
					text = "~",
					numhl = "GitSignsChangeNr",
					linehl = "GitSignsChangeLn"
				}
			},
			signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
			numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
			linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
			word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
			watch_gitdir = { interval = 1000, follow_files = true },
			attach_to_untracked = true,
			-- git-blame provides also the time in contrast to gitsigns
			current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
			current_line_blame_formatter_opts = { relative_time = false },
			sign_priority = 6,
			update_debounce = 100,
			status_formatter = nil, -- Use default
			max_file_length = 40000,
			preview_config = {
				-- Options passed to nvim_open_win
				border = "single",
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1
			},
			diff_opts = { internal = true },
			yadm = { enable = false }
		}

		local wk = require("which-key")
		-- normal mode
		wk.register({
			-- gitsigns
			h = {
				name = "Gitsigns",
				k = { function()
					if vim.wo.diff then
						return "]c"
					end
					vim.schedule(function()
						gs.next_hunk()
					end)
					return "<Ignore>"
				end,
					"Next Hunk" },
				j = { function()
					if vim.wo.diff then
						return "[c"
					end
					vim.schedule(function()
						gs.prev_hunk()
					end)
					return "<Ignore>"
				end,
					"Previous Hunk" },
				-- stage
				s = { "<cmd>Gitsigns stage_hunk<CR>", "Gitsigns: Stage Hunk", silent = true },
				S = { "<cmd>Gitsigns stage_buffer<CR>", "Gitsigns: Stage Buffer" },
				-- undo
				u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Unstage Hunk" },
				U = { "<cmd>Gitsigns undo_stage_buffer<CR>", "Unstage Buffer" },
				-- reset
				r = { "<cmd>Gitsigns reset_hunk<CR>", "Gitsigns: Reset Hunk" },
				R = { "<cmd>Gitsigns reset_buffer<CR>", "Gitsigns: Reset Buffer" },
				-- blame
				b = { "<cmd>Gitsigns blame_line<CR>", "Gitsigns: Toggle Blame" },
				-- toggle
				t = {
					b = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Gitsigns: Toggle Blame" },
					d = { "<cmd>Gitsigns toggle_deleted<CR>", "Gitsigns: Toggle deleted" },
				},
				-- preview
				p = { "<cmd>Gitsigns preview_hunk<CR>", "Gitsigns: Preview Hunk" },
				-- diff
				d = { "<cmd>Gitsigns diffthis<CR>", "Gitsigns: Diff this" },
				D = { "<cmd>Gitsigns diffthis ~<CR>", "Gitsigns: Diff this against last commit" },
			},
		}, {
			mode = "n",
			prefix = "<leader>",
		})
	end,
})

packer.use({
	"TimUntersberger/neogit",
	requires = { "tpope/vim-fugitive", "nvim-lua/plenary.nvim" },
	config = function()
		local neogit = require("neogit")
		neogit.setup {
			disable_signs = false,
			disable_context_highlighting = false,
			disable_commit_confirmation = false,
			-- customize displayed signs
			signs = {
				-- { CLOSED, OPENED }
				section = { ">", "v" },
				item = { ">", "v" },
				hunk = { "", "" }
			},
			integrations = { diffview = false },
			-- override/add mappings
			mappings = {
				-- modify status buffer mappings
				status = {
					-- Adds a mapping with "B" as key that does the "BranchPopup" command
					-- ["B"] = "BranchPopup",
					-- ["C"] = "CommitPopup",
					-- ["P"] = "PullPopup",
					-- ["S"] = "Stage",
					-- ["D"] = "Discard",
					-- Removes the default mapping of "s"
					-- ["s"] = "",
				}
			}
		}

		local wk = require("which-key")
		wk.register({
			-- tpope/vim-fugitive and TimUntersberger/neogit
			g = {
				name = "Git",
				-- git add
				A = { "<cmd>Git add --all<CR>", "Git: Add all" },
				a = {
					name = "Git Add",
					a = { "<cmd>Git add --all<CR>", "Git: Add all" },
					f = { "<cmd>Git add :%<CR>", "Git: Add file" },
				},
				-- git commit
				C = { "<cmd>Git commit --verbose<CR>", "Git: Commit" },
				c = {
					name = "Git Commit",
					c = { "<cmd>Git commit --verbose<CR>", "Git: Commit" },
					a = { "<cmd>Git commit --verbose --all<CR>", "Git: Commit (all)" },
					A = { "<cmd>Git commit --verbose --ammend<CR>", "Git: Commit (ammend)" },
				},
				-- git log
				L = { "<cmd>Gclog!<CR>", "Git: Log" },
				l = {
					name = "Git Log",
					l = { "<cmd>Gclog!<CR>", "Git: Log" },
					L = { "<cmd>tabnew | Gclog<CR>", "Git: Log (Tab)" },
				},
				-- git push-pull
				p = {
					name = "Git Push/Pull",
					a = { "<cmd>Git push --all<CR>", "Git: Push all" },
					p = { "<cmd>Git push --all<CR>", "Git: Push" },
					l = { "<cmd>Git pull<CR>", "Git: Pull" },
				},
				-- git status
				S = { "<cmd>Neogit<CR>", "Git: Status" },
				s = {
					name = "Git Status",
					s = { neogit.open, "Git: Status" },
					t = { neogit.open, "Git: Status" },
				},
				-- git reset
				R = { "<cmd>Git reset<CR>", "Git: Reset" },
			},
		}, {
			mode = "n",
			prefix = "<leader>",
		})
	end,
})

packer.use({
	"sindrets/diffview.nvim",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		require("diffview").setup({})
	end,
})
