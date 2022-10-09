local nvim_lsp = require("lspconfig")
local fn = require("functions")
local cmp = require("plugins.nvim-cmp.init")

nvim_lsp.yamlls.setup({
	on_attach = fn.on_attach,
	capabilities = cmp.capabilities,
	settings = {
		yaml = {
			schemaStore = {
				enable = true,
				url = "https://www.schemastore.org/api/json/catalog.json",
			},
			formate = { enabled = true },
			schemas = {
				["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
				["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
				["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
				["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
				["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
				["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.22.2-standalone-strict/all.json"] = "**/*.k8s.{yml,yaml}",
			},
			completion = true,
			hover = true,
			validate = true,
		},
	},
})
