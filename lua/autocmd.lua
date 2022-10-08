local api = vim.api

--- Remove all trailing whitespace on save
local TrimWhiteSpaceGrp = api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
  command = [[:%s/\s\+$//e]],
  group = TrimWhiteSpaceGrp,
})

-- don't auto comment new line
api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- automatically update vim diagnostics
-- vim.api.nvim_create_augroup("diagnostics", { clear = true })

--vim.api.nvim_create_autocmd("DiagnosticChanged", {
--	group = "diagnostics",
--	callback = function()
--		vim.aiagnostic.setloclist({ open = false })
--	end,
-- })
