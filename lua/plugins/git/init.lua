local packer = require("packer")

packer.use({
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup {
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
	end,
})

packer.use({
	"TimUntersberger/neogit",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		require("neogit").setup {
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
			integrations = { diffview = true },
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
	end,
	cmd = "Neogit",
})

packer.use({ "tpope/vim-fugitive" })

local wk = require("which-key")
local gitsigns = require("gitsigns")

-- normal mode
wk.register({
	-- tpope/vim-fugitive and TimUntersberger/neogit
	g = {
		name = "Git",
		-- git add
		A = { "<cmd>Git add --all<CR>", "Git: Add all", noremap = true },
		a = {
			name = "Git Add",
			a = { "<cmd>Git add --all<CR>", "Git: Add all", noremap = true },
			f = { "<cmd>Git add :%<CR>", "Git: Add file", noremap = true },
		},
		-- git commit
		C = { "<cmd>Git commit --verbose<CR>", "Git: Commit", noremap = true },
		c = {
			name = "Git Commit",
			c = { "<cmd>Git commit --verbose<CR>", "Git: Commit", noremap = true },
			a = { "<cmd>Git commit --verbose --all<CR>", "Git: Commit (all)", noremap = true },
			A = { "<cmd>Git commit --verbose --ammend<CR>", "Git: Commit (ammend)", noremap = true },
		},
		-- git log
		L = { "<cmd>Gclog!<CR>", "Git: Log", noremap = true },
		l = {
			name = "Git Log",
			l = { "<cmd>Gclog!<CR>", "Git: Log", noremap = true },
			L = { "<cmd>tabnew | Gclog<CR>", "Git: Log (Tab)", noremap = true },
		},
		-- git push-pull
		p = {
			name = "Git Push/Pull",
			a = { "<cmd>Git push --all<CR>", "Git: Push all", noremap = true },
			p = { "<cmd>Git push --all<CR>", "Git: Push", noremap = true },
			l = { "<cmd>Git pull<CR>", "Git: Pull", noremap = true },
		},
		-- git status
		S = { "<cmd>Neogit<CR>", "Git: Status", noremap = true },
		s = {
			name = "Git Status",
			s = { "<cmd>Neogit<CR>", "Git: Status", noremap = true },
			t = { "<cmd>Neogit<CR>", "Git: Status", noremap = true },
		},
		-- git reset
		R = { "<cmd>Git reset<CR>", "Git: Reset", noremap = true }
	},
	-- gitsigns
	h = {
		name = "Gitsigns",
		j = { function()
			if vim.wo.diff then
				return "]c"
			end
			vim.schedule(function()
				gitsigns.next_hunk()
			end)
			return "<Ignore>"
		end,
			"Next Hunk", noremap = true },
		k = { function()
			if vim.wo.diff then
				return "[c"
			end
			vim.schedule(function()
				gitsigns.prev_hunk()
			end)
			return "<Ignore>"
		end,
			"Previous Hunk", noremap = true },
		-- stage
		s = { "<cmd>Gitsigns stage_hunk<CR>", "Gitsigns: Stage Hunk", silent = true },
		S = { "<cmd>Gitsigns stage_buffer<CR>", "Gitsigns: Stage Buffer", noremap = true },
		-- undo
		u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Unstage Hunk", noremap = true },
		U = { "<cmd>Gitsigns undo_stage_buffer<CR>", "Unstage Buffer", noremap = true },
		-- reset
		r = { "<cmd>Gitsigns reset_hunk<CR>", "Gitsigns: Reset Hunk", noremap = true },
		R = { "<cmd>Gitsigns reset_buffer<CR>", "Gitsigns: Reset Buffer", noremap = true },
		-- blame
		b = { "<cmd>Gitsigns blame_line<CR>", "Gitsigns: Toggle Blame", noremap = true },
		-- toggle
		t = {
			b = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Gitsigns: Toggle Blame", noremap = true },
			d = { "<cmd>Gitsigns toggle_deleted<CR>", "Gitsigns: Toggle deleted", noremap = true },
		},
		-- preview
		p = { "<cmd>Gitsigns preview_hunk<CR>", "Gitsigns: Preview Hunk", noremap = true },
		-- diff
		d = { "<cmd>Gitsigns diffthis<CR>", "Gitsigns: Diff this", noremap = true },
		D = { "<cmd>Gitsigns diffthis ~<CR>", "Gitsigns: Diff this against last commit", noremap = true },
	},
}, {
	mode = "n",
	prefix = "<leader>",
})
