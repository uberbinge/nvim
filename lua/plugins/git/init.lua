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

local wk = require("which-key")
local gitsigns = require("gitsigns")

-- normal mode
wk.register({
	g = {
		name = "Git",
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
		h = { "<cmd>Telescope git_branches<CR>", "Switch Branches", noremap = true },
		c = { "<cmd>Neogit commit %<CR>", "Commit", noremap = true },
		P = { "<cmd>Neogit push<CR>", "Push", noremap = true },
		m = { "<cmd>Telescope git_commits<CR>", "Search Commits", noremap = true },
		M = { "<cmd>Telescope git_bcommits<CR>", "Search Buffer Commits", noremap = true },
		G = { "<cmd>Telescope git_status<CR>", "Search Git Status", noremap = true },
		s = { "<cmd>Gitsigns stage_hunk<CR>", "Stage Hunk", silent = true },
		R = { "<cmd>Gitsigns reset_buffer<CR>", "Reset Buffer", noremap = true },
		r = { "<cmd>Gitsigns reset_hunk<CR>", "Reset Hunk", noremap = true },
		u = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Unstage Hunk", noremap = true },
		U = { "<cmd>Gitsigns undo_stage_buffer<CR>", "Unstage Buffer", noremap = true },
		S = { "<cmd>Gitsigns stage_buffer<CR>", "Stage Buffer", noremap = true },
		p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview Hunk", noremap = true },
		i = { "<cmd>Gitsigns toggle_deleted<CR>", "Toggle deleted", noremap = true },
		b = { "<cmd>Gitsigns toggle_current_line_blame<CR>", "Toggle Blame", noremap = true },
		g = { "<cmd>Neogit<CR>", "Toggle Neogit", noremap = true },
	},
}, {
	mode = "n",
	prefix = "<leader>",
})
