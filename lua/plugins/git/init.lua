-- load git plugins individually
require("lua.plugins.git.gitsigns")
require("lua.plugins.git.neogit")

local wk = require("which-key")
local gitsigns = require("gitsigns")

-- normal mode
wk.register({
	g = {
		name = "Git",
		J = { function()
			if vim.wo.diff then
				return "]c"
			end
			vim.schedule(function()
				gitsigns.next_hunk()
			end)
			return "<Ignore>"
		end,
			"Next Hunk", noremap = true },
		K = { function()
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
	},
}, {
	mode = "n",
	prefix = "<leader>",
})
