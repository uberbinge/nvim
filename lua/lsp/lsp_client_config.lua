-- https://github.com/neovim/nvim-lspconfig

local M = {}

-- Global callback functions for LSP shortcuts
function M.on_attach(client, bufnr)
	vim.notify("connecting '" .. client.name .. "' to buffer " .. bufnr, vim.log.levels.DEBUG)
	-- vim.notify(vim.inspect(client.server_capabilities), vim.log.levels.DEBUG)

  local visual_mode_keymap = {}

	-- Format document
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			callback = function()
				vim.lsp.buf.formatting_sync({}, 500)
			end,
			buffer = 0,
		})
	end

	-- Rename
	if client.server_capabilities.renameProvider then
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap=true, silent=true, buffer=bufnr })
	end

	-- Code Action
	if client.server_capabilities.codeActionProvider then
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap=true, silent=true, buffer=bufnr })
    vim.keymap.set('v', '<leader>ca', vim.lsp.buf.code_action, { noremap=true, silent=true, buffer=bufnr })
	end

end

return M

