local M = {}

-- Global callback functions for LSP shortcuts
function M.on_attach(client, bufnr)
	vim.notify("connecting '" .. client.name .. "' to buffer " .. bufnr, vim.log.levels.DEBUG)
	-- vim.notify(vim.inspect(client.server_capabilities), vim.log.levels.DEBUG)

	-- Format document
	if client.server_capabilities.documentFormattingProvider then
		vim.api.nvim_create_autocmd("BufWritePre", {
			callback = function()
				vim.lsp.buf.formatting_sync({}, 500)
				-- vim.cmd("LspRestart")
			end,
			buffer = 0,
		})
	end

	local wk = require("which-key")
	local default_options = { silent = true }
	wk.register({
		l = {
			name = "LSP",
			R = { "<cmd>lua vim.lsp.buf.rename()<cr>", "LSP: Rename" },
			A = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "LSP: Code Action" },
			F = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "LSP: Format" },
			I = { "<cmd>LspInfo<cr>", "LSP: Connected Language Servers" },
			X = { "<cmd>LspRestart<cr>", "LSP: Restart LSP Client" },
			-- goto
			g = {
				name = "LSP: Goto",
				d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "LSP: Goto Definition" },
				D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "LSP: Goto Declaration" },
				i = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "LSP: Goto Implementation" },
				t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "LSP: Goto Type Definition" },
				r = { "<cmd>lua vim.lsp.buf.references()<cr>", "LSP: Goto References" },
			},
			-- diagnostics
			d = {
				name = "LSP: Diagnostics",
				D = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "LSP: Next Diagnostic" },
				d = { "<cmd>lua vim.diagnostic.goto_prev()<cr>", "LSP: Prev Diagnostic" },
				s = { "<cmd>Telescope diagnostics bufnr=0<cr>", "LSP: Document Diagnostics" },
				q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "LSP: Quickfix Diagnostics" },
				k = { "<cmd>lua vim.lsp.buf.hover()<cr>", "LSP: Hover Commands" },
				l = { "<cmd>lua vim.diagnostic.open_float()<cr>", "LSP: Line Diagnostics" },
			},
			-- workspace
			w = {
				name = "LSP: Workspace",
				a = {
					"<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "LSP: Add Workspace Folder",
				},
				d = { "<cmd>Telescope diagnostics<cr>", "Workspace Diagnostics" },
				l = {
					"<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
					"LSP: List Workspace Folders",
				},
				r = {
					"<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",
					"LSP: Remove Workspace Folder",
				},
				s = {
					"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
					"LSP: Workspace Symbols",
				},
			},
		},
	}, { prefix = "<leader>", mode = "n", default_options })

end

return M
