local api = vim.api

--- Remove all trailing whitespace on save
local au_trim_whitespace = api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
	command = [[:%s/\s\+$//e]],
	group = au_trim_whitespace,
})

-- Toggle relative line numbers in normal mode
local au_numbertoggle = vim.api.nvim_create_augroup("numbertoggle", { clear = true })
api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "CmdlineLeave", "WinEnter" }, {
	pattern = "*",
	group = au_numbertoggle,
	callback = function()
		if vim.o.number and vim.api.nvim_get_mode().mode ~= "i" then
			vim.opt.relativenumber = true
		end
	end,
})
-- toggle absolute line numbers in insert mode
api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "CmdlineEnter", "WinLeave" }, {
	pattern = "*",
	group = au_numbertoggle,
	callback = function()
		if vim.o.number then
			vim.opt.relativenumber = false
			vim.cmd "redraw"
		end
	end,
})

-- don't auto comment new line
api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- automatically update vim diagnostics
local au_diagnostics = api.nvim_create_augroup("diagnostics", { clear = true })
api.nvim_create_autocmd("DiagnosticChanged", {
	group = au_diagnostics,
	callback = function()
		vim.diagnostic.setloclist({ open = false })
	end,
})
