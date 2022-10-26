local packer = require("packer")

local M = {}

packer.use({
	"hrsh7th/nvim-cmp",
	requires = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
	},
	config = function()

		-- set a custom snippet dir
		vim.g.vsnip_snippet_dir = vim.fn.expand("~/.config/nvim/vsnip")
		-- helpers for jumping between snippet fields
		-- based on nvim-cmp wiki
		local has_words_before = function()
			local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		local feedkey = function(key, mode)
			vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
		end

		local kind_icons = {
			Text = "",
			Method = "",
			Function = "",
			Constructor = "",
			Field = "",
			Variable = "",
			Class = "ﴯ",
			Interface = "",
			Module = "",
			Property = "ﰠ",
			Unit = "",
			Value = "",
			Enum = "",
			Keyword = "",
			Snippet = "",
			Color = "",
			File = "",
			Reference = "",
			Folder = "",
			EnumMember = "",
			Constant = "",
			Struct = "",
			Event = "",
			Operator = "",
			TypeParameter = "",
		}
		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					-- For `vsnip` user.
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			window = {
				documentation = cmp.config.window.bordered(),
			},
			formatting = {
				fields = { "kind", "abbr", "menu" },
				format = function(entry, item)
					-- return special icon for cmdline completion
					if entry.source.name == "cmdline" then
						item.kind = ""
						item.menu = "Vim"
						return item
					end
					item.menu = item.kind
					item.kind = kind_icons[item.kind]
					return item
				end,
			},
			mapping = {
				["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), {
					"i",
					"c",
				}),
				["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), {
					"i",
					"c",
				}),
				["<C-e>"] = cmp.mapping({
					i = cmp.mapping.abort(),
					c = cmp.mapping.close(),
				}),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif vim.fn["vsnip#available"]() == 1 then
						feedkey("<Plug>(vsnip-expand-or-jump)", "")
					elseif has_words_before() then
						cmp.complete()
					else
						fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
					end
				end, { "i", "s" }),

				["<S-Tab>"] = cmp.mapping(function()
					if cmp.visible() then
						cmp.select_prev_item()
					elseif vim.fn["vsnip#jumpable"](-1) == 1 then
						feedkey("<Plug>(vsnip-jump-prev)", "")
					end
				end, { "i", "s" }),
			},
			sources = {
				{ name = "nvim_lsp", priority = 99 },
				{ name = "vsnip" },
				{ name = "path" },
			},
			experimental = {
				ghost_text = true,
			},
		})
		cmp.setup.cmdline("/", {
			sources = {
				{ name = "buffer" },
			},
		})

		cmp.setup.cmdline(":", {
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})
	end,
})

M.capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

return M
