-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/christian.bargmann/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/christian.bargmann/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/christian.bargmann/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/christian.bargmann/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/christian.bargmann/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["lua-dev.nvim"] = {
    config = { "\27LJ\2\nÁ\6\0\0\f\0\29\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\15\0005\4\r\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\0055\6\t\0005\a\n\0=\a\v\6=\6\f\5=\5\14\4=\4\16\0036\4\17\0009\4\18\4'\6\19\0006\a\0\0'\t\20\0B\a\2\0029\a\21\a5\t\27\0005\n\23\0009\v\22\2=\v\22\n9\v\24\1=\v\24\n5\v\25\0=\v\26\n=\n\1\tB\a\2\2\18\b\3\0B\4\4\2\18\3\4\0009\4\28\0009\4\21\4\18\6\3\0B\4\2\1K\0\1\0\16sumneko_lua\1\0\0\bcmd\1\2\0\0\24lua-language-server\14on_attach\1\0\0\17capabilities\nsetup\flua-dev\nforce\20tbl_deep_extend\bvim\rsettings\1\0\0\bLua\1\0\0\vformat\18defaultConfig\1\0\v!keep_line_after_if_statement\14maxLine:1)keep_line_after_expression_statement\14maxLine:1.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1$keep_line_after_while_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1\16indent_size\0061\17indent_style\btab\16quote_style\vdouble\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nö\17\0\0\a\0006\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0=\5\29\0045\5\30\0005\6\31\0=\6\26\5=\5 \4=\4!\3=\3\"\0024\3\0\0=\3#\0025\3*\0005\4$\0004\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\0044\5\0\0=\5(\0044\5\0\0=\5)\4=\4+\0035\4-\0005\5,\0=\5!\4=\4\"\3=\3.\0025\3/\0005\0041\0005\0050\0=\5!\4=\4\"\3=\0032\0025\0035\0005\0043\0005\0054\0=\5!\4=\4\"\3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\agr\20git_revert_file\agu\21git_unstage_file\aga\17git_add_file\agp\rgit_push\6A\16git_add_all\agg\24git_commit_and_push\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\t\6h\16navigate_up\6f\21filter_on_submit\6D\27fuzzy_finder_directory\6/\17fuzzy_finder\6H\18toggle_hidden\6l\rset_root\a]g\22next_git_modified\a[g\22prev_git_modified\n<c-x>\17clear_filter\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6w\1\2\1\0\16toggle_node\vnowait\1\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\21\6r\vrename\6S\15open_split\6d\vdelete\6C\15close_node\6z\20close_all_nodes\6x\21cut_to_clipboard\6m\tmove\6p\25paste_from_clipboard\6<\16prev_source\6>\16next_source\6R\frefresh\6y\22copy_to_clipboard\n<esc>\19revert_preview\f<space>\topen\t<cr>\topen\6c\tcopy\6t\16open_tabnew\6q\17close_window\6s\16open_vsplit\6?\14show_help\6A\18add_directory\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3(\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bÓúß\vstaged\bÔÅÜ\rmodified\5\runstaged\bÔò∞\nadded\5\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\fdeleted\b‚úñ\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\17folder_empty\bÔ∞ä\14highlight\20NeoTreeFileIcon\16folder_open\bÓóæ\18folder_closed\bÓóø\fdefault\6*\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\0¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2¿\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2˚\3\1\0\f\0\"\0C3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0059\6\n\0029\6\v\0064\b\3\0005\t\f\0>\t\1\b5\t\r\0>\t\2\b4\t\3\0005\n\14\0>\n\1\tB\6\3\2=\6\v\0055\6\18\0009\a\15\0029\a\16\a5\t\17\0B\a\2\2=\a\19\0069\a\15\0023\t\20\0005\n\21\0B\a\3\2=\a\22\0069\a\15\0023\t\23\0005\n\24\0B\a\3\2=\a\25\6=\6\15\5B\3\2\0019\3\4\0029\3\26\3'\5\27\0005\6\29\0004\a\3\0005\b\28\0>\b\1\a=\a\v\6B\3\3\0019\3\4\0029\3\26\3'\5\30\0005\6!\0009\a\n\0029\a\v\a4\t\3\0005\n\31\0>\n\1\t4\n\3\0005\v \0>\v\1\nB\a\3\2=\a\v\6B\3\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\20plugins.lsp.lua\19plugins.lsp.go\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3Ä)\1\15\0L\1\2\0X\1\bÄ9\1\0\0\a\1\2\0X\1\5Ä6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµÊÃô\19ô≥Ê˛\3„\4\1\0\6\0\23\0\"6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0003\4\4\0=\4\6\0034\4\0\0=\4\a\0036\4\b\0009\4\t\0049\4\n\4=\4\n\0035\4\v\0005\5\f\0=\5\r\4=\4\14\3B\1\2\0019\1\15\0005\3\17\0005\4\16\0=\4\18\0035\4\19\0B\1\3\0019\1\15\0005\3\21\0005\4\20\0=\4\18\0035\4\22\0B\1\3\1K\0\1\0\1\0\2\vprefix\r<leader>\tmode\6t\1\0\0\1\3\1\0\24<cmd>ToggleTerm<CR>\20Toggle terminal\fnoremap\2\1\0\1\vprefix\r<leader>\6t\1\0\0\1\3\1\0\24<cmd>ToggleTerm<CR>\20Toggle terminal\fnoremap\2\rregister\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vsingle\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-n>\14direction\15horizontal\18close_on_exit\2\0\nsetup\15toggleterm\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n∞\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0B\1\3\1K\0\1\0\1\0\2\vprefix\r<leader>\tmode\6n\6b\1\0\0\6d\1\3\1\0\16<cmd>bd<CR>\vdelete\fnoremap\2\1\0\1\tname\vbuffer\rregister\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\20plugins.lsp.lua\19plugins.lsp.go\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lua-dev.nvim
time([[Config for lua-dev.nvim]], true)
try_loadstring("\27LJ\2\nÁ\6\0\0\f\0\29\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\15\0005\4\r\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\0055\6\t\0005\a\n\0=\a\v\6=\6\f\5=\5\14\4=\4\16\0036\4\17\0009\4\18\4'\6\19\0006\a\0\0'\t\20\0B\a\2\0029\a\21\a5\t\27\0005\n\23\0009\v\22\2=\v\22\n9\v\24\1=\v\24\n5\v\25\0=\v\26\n=\n\1\tB\a\2\2\18\b\3\0B\4\4\2\18\3\4\0009\4\28\0009\4\21\4\18\6\3\0B\4\2\1K\0\1\0\16sumneko_lua\1\0\0\bcmd\1\2\0\0\24lua-language-server\14on_attach\1\0\0\17capabilities\nsetup\flua-dev\nforce\20tbl_deep_extend\bvim\rsettings\1\0\0\bLua\1\0\0\vformat\18defaultConfig\1\0\v!keep_line_after_if_statement\14maxLine:1)keep_line_after_expression_statement\14maxLine:1.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1$keep_line_after_while_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1\16indent_size\0061\17indent_style\btab\16quote_style\vdouble\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0", "config", "lua-dev.nvim")
time([[Config for lua-dev.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3Ä)\1\15\0L\1\2\0X\1\bÄ9\1\0\0\a\1\2\0X\1\5Ä6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµÊÃô\19ô≥Ê˛\3„\4\1\0\6\0\23\0\"6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\5\0003\4\4\0=\4\6\0034\4\0\0=\4\a\0036\4\b\0009\4\t\0049\4\n\4=\4\n\0035\4\v\0005\5\f\0=\5\r\4=\4\14\3B\1\2\0019\1\15\0005\3\17\0005\4\16\0=\4\18\0035\4\19\0B\1\3\0019\1\15\0005\3\21\0005\4\20\0=\4\18\0035\4\22\0B\1\3\1K\0\1\0\1\0\2\vprefix\r<leader>\tmode\6t\1\0\0\1\3\1\0\24<cmd>ToggleTerm<CR>\20Toggle terminal\fnoremap\2\1\0\1\vprefix\r<leader>\6t\1\0\0\1\3\1\0\24<cmd>ToggleTerm<CR>\20Toggle terminal\fnoremap\2\rregister\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vsingle\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-n>\14direction\15horizontal\18close_on_exit\2\0\nsetup\15toggleterm\14which-key\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n∞\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0B\1\3\1K\0\1\0\1\0\2\vprefix\r<leader>\tmode\6n\6b\1\0\0\6d\1\3\1\0\16<cmd>bd<CR>\vdelete\fnoremap\2\1\0\1\tname\vbuffer\rregister\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimÂ\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\22Ä6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\2¿\1¿\0¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2¿\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2˚\3\1\0\f\0\"\0C3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0059\6\n\0029\6\v\0064\b\3\0005\t\f\0>\t\1\b5\t\r\0>\t\2\b4\t\3\0005\n\14\0>\n\1\tB\6\3\2=\6\v\0055\6\18\0009\a\15\0029\a\16\a5\t\17\0B\a\2\2=\a\19\0069\a\15\0023\t\20\0005\n\21\0B\a\3\2=\a\22\0069\a\15\0023\t\23\0005\n\24\0B\a\3\2=\a\25\6=\6\15\5B\3\2\0019\3\4\0029\3\26\3'\5\27\0005\6\29\0004\a\3\0005\b\28\0>\b\1\a=\a\v\6B\3\3\0019\3\4\0029\3\26\3'\5\30\0005\6!\0009\a\n\0029\a\v\a4\t\3\0005\n\31\0>\n\1\t4\n\3\0005\v \0>\v\1\nB\a\3\2=\a\v\6B\3\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nö\17\0\0\a\0006\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0=\5\29\0045\5\30\0005\6\31\0=\6\26\5=\5 \4=\4!\3=\3\"\0024\3\0\0=\3#\0025\3*\0005\4$\0004\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\0044\5\0\0=\5(\0044\5\0\0=\5)\4=\4+\0035\4-\0005\5,\0=\5!\4=\4\"\3=\3.\0025\3/\0005\0041\0005\0050\0=\5!\4=\4\"\3=\0032\0025\0035\0005\0043\0005\0054\0=\5!\4=\4\"\3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\agr\20git_revert_file\agu\21git_unstage_file\aga\17git_add_file\agp\rgit_push\6A\16git_add_all\agg\24git_commit_and_push\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\3\24follow_current_file\2\18show_unloaded\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\t\6h\16navigate_up\6f\21filter_on_submit\6D\27fuzzy_finder_directory\6/\17fuzzy_finder\6H\18toggle_hidden\6l\rset_root\a]g\22next_git_modified\a[g\22prev_git_modified\n<c-x>\17clear_filter\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6w\1\2\1\0\16toggle_node\vnowait\1\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\21\6r\vrename\6S\15open_split\6d\vdelete\6C\15close_node\6z\20close_all_nodes\6x\21cut_to_clipboard\6m\tmove\6p\25paste_from_clipboard\6<\16prev_source\6>\16next_source\6R\frefresh\6y\22copy_to_clipboard\n<esc>\19revert_preview\f<space>\topen\t<cr>\topen\6c\tcopy\6t\16open_tabnew\6q\17close_window\6s\16open_vsplit\6?\14show_help\6A\18add_directory\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\rposition\tleft\nwidth\3(\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bÓúß\vstaged\bÔÅÜ\rmodified\5\runstaged\bÔò∞\nadded\5\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\fdeleted\b‚úñ\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\17folder_empty\bÔ∞ä\14highlight\20NeoTreeFileIcon\16folder_open\bÓóæ\18folder_closed\bÓóø\fdefault\6*\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\14highlight\24NeoTreeIndentMarker\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
