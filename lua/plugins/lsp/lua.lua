local packer = require("packer")

packer.use({
	"folke/neodev.nvim",
	config = function()
		local nvim_lsp = require("lspconfig")
		local lsp = require("functions")
		local cmp = require("plugins.nvim-cmp.init")
		local opts = {
			settings = {
				Lua = {
					diagnostics = {
						neededFileStatus = {
							["codestyle-check"] = "Any",
						},
					},
					format = {
						enable = true,
						defaultConfig = {
							quote_style = "double",
							indent_style = "tab",
							indent_size = "1",
							keep_line_after_if_statement = "maxLine:1",
							keep_line_after_do_statement = "maxLine:1",
							keep_line_after_while_statement = "maxLine:1",
							keep_line_after_repeat_statement = "maxLine:1",
							keep_line_after_for_statement = "maxLine:1",
							keep_line_after_local_or_assign_statement = "maxLine:1",
							keep_line_after_function_define_statement = "keepLine:1",
							keep_line_after_expression_statement = "maxLine:1",
						},
					},
				},
			},
		}
		require("neodev").setup({
			lspconfig = {
				capabilities = cmp.capabilities,
				on_attach = lsp.on_attach,
				cmd = { "lua-language-server" },
			},
		})
		nvim_lsp.sumneko_lua.setup(opts)
	end,
}) -- LSP server extensions for Lua
