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
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n«\a\0\0\5\0\28\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\14diff_opts\1\0\1\rinternal\2\19preview_config\1\0\5\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\brow\3\0&current_line_blame_formatter_opts\1\0\1\18relative_time\1\17watch_gitdir\1\0\2\rinterval\3è\a\17follow_files\2\nsigns\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\bâ€¾\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\bâ”‚\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\bâ”‚\vlinehl\18GitSignsAddLn\fkeymaps\1\0\t\18sign_priority\3\6\15signcolumn\2\23current_line_blame\1\24attach_to_untracked\2\nnumhl\1\vlinehl\1\14word_diff\1\20max_file_length\3À¸\2\20update_debounce\3d\1\0\1\fnoremap\1\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n­\3\0\0\4\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\0016\0\16\0009\0\17\0'\2\18\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\14undercurl\2\19terminalColors\2\17globalStatus\1\16dimInactive\1\16transparent\1\21specialException\2\18specialReturn\2\ntheme\fdefault\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lua-dev.nvim"] = {
    config = { "\27LJ\2\nç\6\0\0\f\0\29\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\15\0005\4\r\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\0055\6\t\0005\a\n\0=\a\v\6=\6\f\5=\5\14\4=\4\16\0036\4\17\0009\4\18\4'\6\19\0006\a\0\0'\t\20\0B\a\2\0029\a\21\a5\t\27\0005\n\23\0009\v\22\2=\v\22\n9\v\24\1=\v\24\n5\v\25\0=\v\26\n=\n\1\tB\a\2\2\18\b\3\0B\4\4\2\18\3\4\0009\4\28\0009\4\21\4\18\6\3\0B\4\2\1K\0\1\0\16sumneko_lua\1\0\0\bcmd\1\2\0\0\24lua-language-server\14on_attach\1\0\0\17capabilities\nsetup\flua-dev\nforce\20tbl_deep_extend\bvim\rsettings\1\0\0\bLua\1\0\0\vformat\18defaultConfig\1\0\v$keep_line_after_while_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1!keep_line_after_if_statement\14maxLine:1\17indent_style\btab\16quote_style\vdouble\16indent_size\0061)keep_line_after_expression_statement\14maxLine:1.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\nû\16\0\0\a\0004\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3(\0005\4\"\0004\5\0\0=\5#\0044\5\0\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0035\4+\0005\5*\0=\5\31\4=\4 \3=\3,\0025\3-\0005\4/\0005\5.\0=\5\31\4=\4 \3=\0030\0025\0033\0005\0041\0005\0052\0=\5\31\4=\4 \3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\agc\15git_commit\agr\20git_revert_file\agg\24git_commit_and_push\aga\17git_add_file\6A\16git_add_all\agu\21git_unstage_file\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\6h\16navigate_up\6H\18toggle_hidden\n<c-x>\17clear_filter\a]g\22next_git_modified\a[g\22prev_git_modified\6f\21filter_on_submit\6D\27fuzzy_finder_directory\6/\17fuzzy_finder\6l\rset_root\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\22\6s\16open_vsplit\6?\14show_help\6q\17close_window\6A\18add_directory\f<space>\5\6<\16prev_source\6R\frefresh\t<cr>\topen\6y\22copy_to_clipboard\6z\20close_all_nodes\6x\21cut_to_clipboard\6>\16next_source\n<esc>\19revert_preview\6S\15open_split\6p\25paste_from_clipboard\6w\topen\6C\15close_node\6c\tcopy\6r\vrename\6t\16open_tabnew\6d\vdelete\6m\tmove\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bîœ§\vstaged\bï†\rmodified\5\runstaged\bï˜°\fignored\bï‘´\14untracked\bï„¨\frenamed\bï•”\fdeleted\bâœ–\nadded\5\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\fdefault\6*\16folder_open\bî—¾\18folder_closed\bî—¿\14highlight\20NeoTreeFileIcon\17folder_empty\bï°Š\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_collapsed\bï‘ \fpadding\3\1\23last_indent_marker\bâ””\18indent_marker\bâ”‚\17with_markers\2\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\bï‘¼\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\23enable_diagnostics\2\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    config = { "\27LJ\2\n›\2\0\0\5\0\17\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0004\4\0\0=\4\15\3=\3\16\2B\0\2\1K\0\1\0\rmappings\vstatus\1\0\0\17integrations\1\0\1\rdiffview\2\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\6>\6v\fsection\1\0\0\1\3\0\0\6>\6v\1\0\3!disable_context_highlighting\1\18disable_signs\1 disable_commit_confirmation\1\nsetup\vneogit\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/opt/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nÚ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\1\1\2\0\0\vstring\1\0\3\22ignored_next_char\v[%w%.]\30enable_check_bracket_line\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nÐ\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20€6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimå\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\22€6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5€-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\n€-\1\2\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\a\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\2À\1À\0À\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2¨\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0009\0\1\0B\0\1\1X\0\v€6\0\2\0009\0\3\0009\0\4\0)\2ÿÿB\0\2\2\t\0\0\0X\0\4€-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2À\1À\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2û\3\1\0\f\0\"\0C3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0059\6\n\0029\6\v\0064\b\3\0005\t\f\0>\t\1\b5\t\r\0>\t\2\b4\t\3\0005\n\14\0>\n\1\tB\6\3\2=\6\v\0055\6\18\0009\a\15\0029\a\16\a5\t\17\0B\a\2\2=\a\19\0069\a\15\0023\t\20\0005\n\21\0B\a\3\2=\a\22\0069\a\15\0023\t\23\0005\n\24\0B\a\3\2=\a\25\6=\6\15\5B\3\2\0019\3\4\0029\3\26\3'\5\27\0005\6\29\0004\a\3\0005\b\28\0>\b\1\a=\a\v\6B\3\3\0019\3\4\0029\3\26\3'\5\30\0005\6!\0009\a\n\0029\a\v\a4\t\3\0005\n\31\0>\n\1\t4\n\3\0005\v \0>\v\1\nB\a\3\2=\a\v\6B\3\3\0012\0\0€K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nË\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\21plugins.lsp.yaml\23plugins.lsp.docker\26plugins.lsp.terraform\27plugins.lsp.typescript\20plugins.lsp.lua\19plugins.lsp.go\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n \1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\19ignore_install\1\2\0\0\vphpdoc\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nZ\0\3\6\0\2\2\r)\3È\0\1\3\1\0X\3\5€6\3\0\0009\3\1\3\24\5\0\1D\3\2\0X\3\4€6\3\0\0009\3\1\3\24\5\1\1D\3\2\0K\0\1\0\nfloor\tmathµæÌ™\19™³æþ\3çÌ™³\6³æŒÿ\3þ\15\1\0\f\0_\0v6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\1\0B\3\2\0029\3\4\0039\3\5\0039\3\6\0039\4\a\0005\6\28\0005\a\27\0005\b\b\0005\t\24\0005\n\n\0009\v\t\3=\v\v\n9\v\f\3=\v\r\n9\v\14\3=\v\15\n9\v\16\3=\v\17\n9\v\18\3=\v\19\n9\v\20\3=\v\21\n9\v\22\3=\v\23\n=\n\25\t=\t\26\b=\b\5\a=\a\4\0065\a\30\0005\b\29\0=\b\31\a5\b \0=\b!\a=\a\"\0065\a$\0005\b#\0=\b%\a5\b&\0=\b'\a5\bL\0005\t)\0009\n(\1=\n*\t9\n+\1=\n,\t9\n-\1=\n.\t9\n/\1=\n0\t9\n1\1=\n2\t9\n3\1=\n4\t9\n5\1=\n6\t9\n7\1=\n8\t9\n9\1=\n:\t9\n;\0019\v<\1 \n\v\n=\n=\t9\n;\0019\v>\1 \n\v\n=\n?\t9\n@\1=\nA\t9\nB\1=\nC\t9\nD\1=\nE\t9\nF\1=\nG\t9\nH\2=\n\19\t9\nI\2=\nJ\t9\nK\1=\n\15\t=\t\25\b=\b\26\a5\bM\0005\tO\0003\nN\0=\nP\t=\tQ\b5\tR\0=\tS\b5\tU\0005\nT\0=\nQ\t=\tV\b=\bW\a4\b\0\0=\bX\a5\bY\0=\bZ\a5\b[\0=\b\\\a=\a]\6B\4\2\0019\4^\0'\6\5\0B\4\2\1K\0\1\0\19load_extension\rdefaults\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ•­\bâ•®\bâ•¯\bâ•°\vborder\18layout_config\tflex\1\0\0\1\0\1\18preview_width\4Í™³æ\fÌ™³ÿ\3\rvertical\1\0\3\vheight\4æÌ™³\6æÌ¹ÿ\3\nwidth\4Í™³æ\fÌ™³ÿ\3\19preview_height\4\0€€€ÿ\3\15horizontal\18preview_width\1\0\0\0\1\0\3\vheight\4³æÌ™\3³æ¬ÿ\3\nwidth\4æÌ™³\6æÌ¹ÿ\3\20prompt_position\btop\1\0\0\14which_key\n<c-o>\18toggle_mirror\19toggle_preview\n<c-t>\15select_tab\n<c-s>\22select_horizontal\n<c-v>\20select_vertical\t<cr>\19select_default\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\n<C-l>\19send_to_qflist\n<C-q>\28send_selected_to_qflist\n<C-k>\28move_selection_previous\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-j>\24move_selection_next\n<esc>\1\0\0\nclose\25file_ignore_patterns\1\t\0\0\r%.git/.*\r%.vim/.*\20node_modules/.*\14%.idea/.*\14vendor/.*\16%.vscode/.*\17%.history/.*\15.terraform\22vimgrep_arguments\1\0\f\15multi_icon\a<>\20layout_strategy\15horizontal\17entry_prefix\a  \rwinblend\3\0\20selection_caret\tï¤ \18prompt_prefix\a> \ruse_less\2\19color_devicons\2\21sorting_strategy\15descending\23selection_strategy\nreset\20scroll_strategy\ncycle\17initial_mode\vinsert\1\v\0\0\arg\r--follow\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\16--no-ignore\v--trim\fpickers\fbuffers\1\0\2\18sort_lastused\2\26ignore_current_buffer\2\15find_files\1\0\0\1\0\1\vhidden\2\1\0\0\1\0\0\rmappings\6i\1\0\0\n<c-a>\15select_all\n<c-y>\tcopy\n<c-p>\tmove\n<c-x>\vremove\n<c-h>\18toggle_hidden\n<c-r>\vrename\n<c-n>\1\0\0\vcreate\1\0\2\vhidden\2\17hijack_netrw\1\nsetup\factions\17file_browser\15extensions\29telescope.actions.layout\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3€)\1\15\0L\1\2\0X\1\b€9\1\0\0\a\1\2\0X\1\5€6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµæÌ™\19™³æþ\3Ï\3\1\0\6\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\0016\0\a\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\15<C-\\><C-n>\n<ESC>\6t\bset\vkeymap\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\vborder\vsingle\rwinblend\3\3\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-n>\14direction\15horizontal\18close_on_exit\2\17persist_size\2\20insert_mappings\2\0\nsetup\15toggleterm\frequire\0" },
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
    config = { "\27LJ\2\ný\f\0\0\a\0003\0F6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0015\1\3\0009\2\4\0005\4\6\0005\5\5\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\0055\6\r\0=\6\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\5=\5\f\0045\5\19\0005\6\20\0=\6\f\0055\6\21\0=\6\18\0055\6\22\0=\6\23\0055\6\24\0=\6\25\0055\6\26\0=\6\27\0055\6\28\0=\6\29\5=\5\18\0045\5\30\0005\6\31\0=\6\16\0055\6 \0=\6!\0055\6\"\0=\6\25\5=\5#\0045\5$\0005\6%\0=\6&\0055\6'\0=\6(\0055\6)\0=\6*\5=\5*\0045\5+\0005\6,\0=\6\18\0055\6-\0=\6\23\0055\6.\0=\6!\0055\6/\0=\6\27\0055\0060\0=\6\25\0055\0061\0=\6\f\5=\5\29\0045\0052\0>\1\1\5B\2\3\1K\0\1\0\1\0\2\vprefix\r<leader>\tmode\6n\1\3\1\0\31<cmd>Telescope buffers<cr>\22List open buffers\fnoremap\2\1\3\1\0\31<cmd>Telescope pickers<cr>\21List all pickers\fnoremap\2\1\3\1\0\30<cmd>Telescope resume<cr>\23Resume last picker\fnoremap\2\1\3\1\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\fnoremap\2\1\3\1\0!<cmd>Telescope live_grep<cr>\17Find in File\fnoremap\2\1\3\1\0.<cmd>Telescope find_files hidden=true<cr>\14Find File\fnoremap\2\1\0\1\tname\vSearch\6q\1\3\0\0002<cmd>lua require('functions').toggle_qf()<cr>\25Toggle quickfix list\6k\1\3\0\0\23<cmd>cprevious<cr>\27Previous Quickfix Item\6j\1\3\0\0\19<cmd>cnext<cr>\23Next Quickfix Item\1\0\1\tname\rQuickfix\6m\1\3\0\0\"<cmd>PackerSync --preview<cr>\15PackerSync\6o\1\2\0\0\fOptions\1\3\0\0;<cmd>lua require('functions').toggle_diagnostics()<cr>\23Toggle Diagnostics\1\0\1\tname\tMisc\6s\1\3\0\0\15<cmd>w<cr>\16Save Buffer\6r\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\6p\1\3\0\0#<cmd>Neotree reveal toggle<cr>\20Toggle Filetree\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\17Find in File\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\1\3\0\0001<cmd>Telescope file_browser grouped=true<cr>\17File browser\1\0\1\tname\nFiles\6f\1\3\1\0.<cmd>Neotree action=focus reveal=true<CR>\31Find file in file explorer\fnoremap\2\6d\1\3\0\0\16<cmd>bd<CR>\17Close buffer\6D\1\3\0\0\24<cmd>%bd|e#|bd#<cr>%Close all but the current buffer\6b\1\3\0\0\31<cmd>Telescope buffers<cr>\16Find buffer\1\0\1\tname\fBuffers\6t\1\3\0\0\24<cmd>ToggleTerm<cr>\rTerminal\n<Tab>\1\0\0\1\3\0\0\16<cmd>e#<cr>\16Prev buffer\rregister\1\0\1\vsilent\2\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nÚ\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\1\1\2\0\0\vstring\1\0\3\22ignored_next_char\v[%w%.]\30enable_check_bracket_line\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nÐ\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20€6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2€+\2\1\0X\3\1€+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimå\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\22€6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5€-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\n€-\1\2\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\a\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\2À\1À\0À\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2¨\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4€-\0\0\0009\0\1\0B\0\1\1X\0\v€6\0\2\0009\0\3\0009\0\4\0)\2ÿÿB\0\2\2\t\0\0\0X\0\4€-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2À\1À\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2û\3\1\0\f\0\"\0C3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0059\6\n\0029\6\v\0064\b\3\0005\t\f\0>\t\1\b5\t\r\0>\t\2\b4\t\3\0005\n\14\0>\n\1\tB\6\3\2=\6\v\0055\6\18\0009\a\15\0029\a\16\a5\t\17\0B\a\2\2=\a\19\0069\a\15\0023\t\20\0005\n\21\0B\a\3\2=\a\22\0069\a\15\0023\t\23\0005\n\24\0B\a\3\2=\a\25\6=\6\15\5B\3\2\0019\3\4\0029\3\26\3'\5\27\0005\6\29\0004\a\3\0005\b\28\0>\b\1\a=\a\v\6B\3\3\0019\3\4\0029\3\26\3'\5\30\0005\6!\0009\a\n\0029\a\v\a4\t\3\0005\n\31\0>\n\1\t4\n\3\0005\v \0>\v\1\nB\a\3\2=\a\v\6B\3\3\0012\0\0€K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\nû\16\0\0\a\0004\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3(\0005\4\"\0004\5\0\0=\5#\0044\5\0\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0035\4+\0005\5*\0=\5\31\4=\4 \3=\3,\0025\3-\0005\4/\0005\5.\0=\5\31\4=\4 \3=\0030\0025\0033\0005\0041\0005\0052\0=\5\31\4=\4 \3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\agc\15git_commit\agr\20git_revert_file\agg\24git_commit_and_push\aga\17git_add_file\6A\16git_add_all\agu\21git_unstage_file\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\6h\16navigate_up\6H\18toggle_hidden\n<c-x>\17clear_filter\a]g\22next_git_modified\a[g\22prev_git_modified\6f\21filter_on_submit\6D\27fuzzy_finder_directory\6/\17fuzzy_finder\6l\rset_root\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_default\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\fvisible\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\22\6s\16open_vsplit\6?\14show_help\6q\17close_window\6A\18add_directory\f<space>\5\6<\16prev_source\6R\frefresh\t<cr>\topen\6y\22copy_to_clipboard\6z\20close_all_nodes\6x\21cut_to_clipboard\6>\16next_source\n<esc>\19revert_preview\6S\15open_split\6p\25paste_from_clipboard\6w\topen\6C\15close_node\6c\tcopy\6r\vrename\6t\16open_tabnew\6d\vdelete\6m\tmove\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\bîœ§\vstaged\bï†\rmodified\5\runstaged\bï˜°\fignored\bï‘´\14untracked\bï„¨\frenamed\bï•”\fdeleted\bâœ–\nadded\5\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\fdefault\6*\16folder_open\bî—¾\18folder_closed\bî—¿\14highlight\20NeoTreeFileIcon\17folder_empty\bï°Š\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_collapsed\bï‘ \fpadding\3\1\23last_indent_marker\bâ””\18indent_marker\bâ”‚\17with_markers\2\16indent_size\3\2\23expander_highlight\20NeoTreeExpander\22expander_expanded\bï‘¼\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\26sort_case_insensitive\1\23enable_diagnostics\2\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nË\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\21plugins.lsp.yaml\23plugins.lsp.docker\26plugins.lsp.terraform\27plugins.lsp.typescript\20plugins.lsp.lua\19plugins.lsp.go\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\ný\f\0\0\a\0003\0F6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0015\1\3\0009\2\4\0005\4\6\0005\5\5\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0005\6\v\0=\6\f\0055\6\r\0=\6\14\0055\6\15\0=\6\16\0055\6\17\0=\6\18\5=\5\f\0045\5\19\0005\6\20\0=\6\f\0055\6\21\0=\6\18\0055\6\22\0=\6\23\0055\6\24\0=\6\25\0055\6\26\0=\6\27\0055\6\28\0=\6\29\5=\5\18\0045\5\30\0005\6\31\0=\6\16\0055\6 \0=\6!\0055\6\"\0=\6\25\5=\5#\0045\5$\0005\6%\0=\6&\0055\6'\0=\6(\0055\6)\0=\6*\5=\5*\0045\5+\0005\6,\0=\6\18\0055\6-\0=\6\23\0055\6.\0=\6!\0055\6/\0=\6\27\0055\0060\0=\6\25\0055\0061\0=\6\f\5=\5\29\0045\0052\0>\1\1\5B\2\3\1K\0\1\0\1\0\2\vprefix\r<leader>\tmode\6n\1\3\1\0\31<cmd>Telescope buffers<cr>\22List open buffers\fnoremap\2\1\3\1\0\31<cmd>Telescope pickers<cr>\21List all pickers\fnoremap\2\1\3\1\0\30<cmd>Telescope resume<cr>\23Resume last picker\fnoremap\2\1\3\1\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\fnoremap\2\1\3\1\0!<cmd>Telescope live_grep<cr>\17Find in File\fnoremap\2\1\3\1\0.<cmd>Telescope find_files hidden=true<cr>\14Find File\fnoremap\2\1\0\1\tname\vSearch\6q\1\3\0\0002<cmd>lua require('functions').toggle_qf()<cr>\25Toggle quickfix list\6k\1\3\0\0\23<cmd>cprevious<cr>\27Previous Quickfix Item\6j\1\3\0\0\19<cmd>cnext<cr>\23Next Quickfix Item\1\0\1\tname\rQuickfix\6m\1\3\0\0\"<cmd>PackerSync --preview<cr>\15PackerSync\6o\1\2\0\0\fOptions\1\3\0\0;<cmd>lua require('functions').toggle_diagnostics()<cr>\23Toggle Diagnostics\1\0\1\tname\tMisc\6s\1\3\0\0\15<cmd>w<cr>\16Save Buffer\6r\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\6p\1\3\0\0#<cmd>Neotree reveal toggle<cr>\20Toggle Filetree\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\17Find in File\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\1\3\0\0001<cmd>Telescope file_browser grouped=true<cr>\17File browser\1\0\1\tname\nFiles\6f\1\3\1\0.<cmd>Neotree action=focus reveal=true<CR>\31Find file in file explorer\fnoremap\2\6d\1\3\0\0\16<cmd>bd<CR>\17Close buffer\6D\1\3\0\0\24<cmd>%bd|e#|bd#<cr>%Close all but the current buffer\6b\1\3\0\0\31<cmd>Telescope buffers<cr>\16Find buffer\1\0\1\tname\fBuffers\6t\1\3\0\0\24<cmd>ToggleTerm<cr>\rTerminal\n<Tab>\1\0\0\1\3\0\0\16<cmd>e#<cr>\16Prev buffer\rregister\1\0\1\vsilent\2\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n \1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\19ignore_install\1\2\0\0\vphpdoc\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n­\3\0\0\4\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\0016\0\16\0009\0\17\0'\2\18\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\14undercurl\2\19terminalColors\2\17globalStatus\1\16dimInactive\1\16transparent\1\21specialException\2\18specialReturn\2\ntheme\fdefault\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\3\6\0\2\2\r)\3È\0\1\3\1\0X\3\5€6\3\0\0009\3\1\3\24\5\0\1D\3\2\0X\3\4€6\3\0\0009\3\1\3\24\5\1\1D\3\2\0K\0\1\0\nfloor\tmathµæÌ™\19™³æþ\3çÌ™³\6³æŒÿ\3þ\15\1\0\f\0_\0v6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\1\0B\3\2\0029\3\4\0039\3\5\0039\3\6\0039\4\a\0005\6\28\0005\a\27\0005\b\b\0005\t\24\0005\n\n\0009\v\t\3=\v\v\n9\v\f\3=\v\r\n9\v\14\3=\v\15\n9\v\16\3=\v\17\n9\v\18\3=\v\19\n9\v\20\3=\v\21\n9\v\22\3=\v\23\n=\n\25\t=\t\26\b=\b\5\a=\a\4\0065\a\30\0005\b\29\0=\b\31\a5\b \0=\b!\a=\a\"\0065\a$\0005\b#\0=\b%\a5\b&\0=\b'\a5\bL\0005\t)\0009\n(\1=\n*\t9\n+\1=\n,\t9\n-\1=\n.\t9\n/\1=\n0\t9\n1\1=\n2\t9\n3\1=\n4\t9\n5\1=\n6\t9\n7\1=\n8\t9\n9\1=\n:\t9\n;\0019\v<\1 \n\v\n=\n=\t9\n;\0019\v>\1 \n\v\n=\n?\t9\n@\1=\nA\t9\nB\1=\nC\t9\nD\1=\nE\t9\nF\1=\nG\t9\nH\2=\n\19\t9\nI\2=\nJ\t9\nK\1=\n\15\t=\t\25\b=\b\26\a5\bM\0005\tO\0003\nN\0=\nP\t=\tQ\b5\tR\0=\tS\b5\tU\0005\nT\0=\nQ\t=\tV\b=\bW\a4\b\0\0=\bX\a5\bY\0=\bZ\a5\b[\0=\b\\\a=\a]\6B\4\2\0019\4^\0'\6\5\0B\4\2\1K\0\1\0\19load_extension\rdefaults\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ•­\bâ•®\bâ•¯\bâ•°\vborder\18layout_config\tflex\1\0\0\1\0\1\18preview_width\4Í™³æ\fÌ™³ÿ\3\rvertical\1\0\3\vheight\4æÌ™³\6æÌ¹ÿ\3\nwidth\4Í™³æ\fÌ™³ÿ\3\19preview_height\4\0€€€ÿ\3\15horizontal\18preview_width\1\0\0\0\1\0\3\vheight\4³æÌ™\3³æ¬ÿ\3\nwidth\4æÌ™³\6æÌ¹ÿ\3\20prompt_position\btop\1\0\0\14which_key\n<c-o>\18toggle_mirror\19toggle_preview\n<c-t>\15select_tab\n<c-s>\22select_horizontal\n<c-v>\20select_vertical\t<cr>\19select_default\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\n<C-l>\19send_to_qflist\n<C-q>\28send_selected_to_qflist\n<C-k>\28move_selection_previous\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-j>\24move_selection_next\n<esc>\1\0\0\nclose\25file_ignore_patterns\1\t\0\0\r%.git/.*\r%.vim/.*\20node_modules/.*\14%.idea/.*\14vendor/.*\16%.vscode/.*\17%.history/.*\15.terraform\22vimgrep_arguments\1\0\f\15multi_icon\a<>\20layout_strategy\15horizontal\17entry_prefix\a  \rwinblend\3\0\20selection_caret\tï¤ \18prompt_prefix\a> \ruse_less\2\19color_devicons\2\21sorting_strategy\15descending\23selection_strategy\nreset\20scroll_strategy\ncycle\17initial_mode\vinsert\1\v\0\0\arg\r--follow\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\16--no-ignore\v--trim\fpickers\fbuffers\1\0\2\18sort_lastused\2\26ignore_current_buffer\2\15find_files\1\0\0\1\0\1\vhidden\2\1\0\0\1\0\0\rmappings\6i\1\0\0\n<c-a>\15select_all\n<c-y>\tcopy\n<c-p>\tmove\n<c-x>\vremove\n<c-h>\18toggle_hidden\n<c-r>\vrename\n<c-n>\1\0\0\vcreate\1\0\2\vhidden\2\17hijack_netrw\1\nsetup\factions\17file_browser\15extensions\29telescope.actions.layout\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n«\a\0\0\5\0\28\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\2B\0\2\1K\0\1\0\tyadm\1\0\1\venable\1\14diff_opts\1\0\1\rinternal\2\19preview_config\1\0\5\bcol\3\1\vborder\vsingle\nstyle\fminimal\rrelative\vcursor\brow\3\0&current_line_blame_formatter_opts\1\0\1\18relative_time\1\17watch_gitdir\1\0\2\rinterval\3è\a\17follow_files\2\nsigns\17changedelete\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\14topdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\bâ€¾\vlinehl\21GitSignsDeleteLn\vdelete\1\0\4\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\vchange\1\0\4\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\ttext\bâ”‚\vlinehl\21GitSignsChangeLn\badd\1\0\0\1\0\4\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\ttext\bâ”‚\vlinehl\18GitSignsAddLn\fkeymaps\1\0\t\18sign_priority\3\6\15signcolumn\2\23current_line_blame\1\24attach_to_untracked\2\nnumhl\1\vlinehl\1\14word_diff\1\20max_file_length\3À¸\2\20update_debounce\3d\1\0\1\fnoremap\1\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: lua-dev.nvim
time([[Config for lua-dev.nvim]], true)
try_loadstring("\27LJ\2\nç\6\0\0\f\0\29\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\15\0005\4\r\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\0055\6\t\0005\a\n\0=\a\v\6=\6\f\5=\5\14\4=\4\16\0036\4\17\0009\4\18\4'\6\19\0006\a\0\0'\t\20\0B\a\2\0029\a\21\a5\t\27\0005\n\23\0009\v\22\2=\v\22\n9\v\24\1=\v\24\n5\v\25\0=\v\26\n=\n\1\tB\a\2\2\18\b\3\0B\4\4\2\18\3\4\0009\4\28\0009\4\21\4\18\6\3\0B\4\2\1K\0\1\0\16sumneko_lua\1\0\0\bcmd\1\2\0\0\24lua-language-server\14on_attach\1\0\0\17capabilities\nsetup\flua-dev\nforce\20tbl_deep_extend\bvim\rsettings\1\0\0\bLua\1\0\0\vformat\18defaultConfig\1\0\v$keep_line_after_while_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1!keep_line_after_if_statement\14maxLine:1\17indent_style\btab\16quote_style\vdouble\16indent_size\0061)keep_line_after_expression_statement\14maxLine:1.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0", "config", "lua-dev.nvim")
time([[Config for lua-dev.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3€)\1\15\0L\1\2\0X\1\b€9\1\0\0\a\1\2\0X\1\5€6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµæÌ™\19™³æþ\3Ï\3\1\0\6\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\0016\0\a\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\15<C-\\><C-n>\n<ESC>\6t\bset\vkeymap\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\vborder\vsingle\rwinblend\3\3\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-n>\14direction\15horizontal\18close_on_exit\2\17persist_size\2\20insert_mappings\2\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)


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
