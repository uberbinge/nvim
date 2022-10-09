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
    config = { "\27LJ\2\n�\6\0\0\f\0\29\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\15\0005\4\r\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\0055\6\t\0005\a\n\0=\a\v\6=\6\f\5=\5\14\4=\4\16\0036\4\17\0009\4\18\4'\6\19\0006\a\0\0'\t\20\0B\a\2\0029\a\21\a5\t\27\0005\n\23\0009\v\22\2=\v\22\n9\v\24\1=\v\24\n5\v\25\0=\v\26\n=\n\1\tB\a\2\2\18\b\3\0B\4\4\2\18\3\4\0009\4\28\0009\4\21\4\18\6\3\0B\4\2\1K\0\1\0\16sumneko_lua\1\0\0\bcmd\1\2\0\0\24lua-language-server\14on_attach\1\0\0\17capabilities\nsetup\flua-dev\nforce\20tbl_deep_extend\bvim\rsettings\1\0\0\bLua\1\0\0\vformat\18defaultConfig\1\0\v$keep_line_after_while_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1\16indent_size\0061!keep_line_after_if_statement\14maxLine:1\17indent_style\btab\16quote_style\vdouble)keep_line_after_expression_statement\14maxLine:1.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\16\0\0\a\0004\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3(\0005\4\"\0004\5\0\0=\5#\0044\5\0\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0035\4+\0005\5*\0=\5\31\4=\4 \3=\3,\0025\3-\0005\4/\0005\5.\0=\5\31\4=\4 \3=\0030\0025\0033\0005\0041\0005\0052\0=\5\31\4=\4 \3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\6A\16git_add_all\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\agg\24git_commit_and_push\agr\20git_revert_file\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\a]g\22next_git_modified\6f\21filter_on_submit\a[g\22prev_git_modified\6D\27fuzzy_finder_directory\6h\16navigate_up\n<c-x>\17clear_filter\6/\17fuzzy_finder\6l\rset_root\6H\18toggle_hidden\19filtered_items\1\0\4\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\20hide_gitignored\1\16hide_hidden\2\fvisible\1\18hide_dotfiles\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\22\6d\vdelete\6r\vrename\6C\15close_node\6x\21cut_to_clipboard\6S\15open_split\6t\16open_tabnew\f<space>\5\t<cr>\topen\6q\17close_window\6s\16open_vsplit\6c\tcopy\6?\14show_help\6<\16prev_source\n<esc>\19revert_preview\6R\frefresh\6w\topen\6m\tmove\6>\16next_source\6z\20close_all_nodes\6p\25paste_from_clipboard\6A\18add_directory\6y\22copy_to_clipboard\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\b\frenamed\b\fdeleted\b✖\nadded\5\vstaged\b\rmodified\5\runstaged\b\fignored\b\14untracked\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\b\17folder_empty\bﰊ\16folder_open\b\vindent\1\0\t\fpadding\3\1\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\22�6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5�-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\a\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\2�\1�\0�\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2�\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0B\0\1\1X\0\v�6\0\2\0009\0\3\0009\0\4\0)\2��B\0\2\2\t\0\0\0X\0\4�-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2�\1�\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2�\3\1\0\f\0\"\0C3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0059\6\n\0029\6\v\0064\b\3\0005\t\f\0>\t\1\b5\t\r\0>\t\2\b4\t\3\0005\n\14\0>\n\1\tB\6\3\2=\6\v\0055\6\18\0009\a\15\0029\a\16\a5\t\17\0B\a\2\2=\a\19\0069\a\15\0023\t\20\0005\n\21\0B\a\3\2=\a\22\0069\a\15\0023\t\23\0005\n\24\0B\a\3\2=\a\25\6=\6\15\5B\3\2\0019\3\4\0029\3\26\3'\5\27\0005\6\29\0004\a\3\0005\b\28\0>\b\1\a=\a\v\6B\3\3\0019\3\4\0029\3\26\3'\5\30\0005\6!\0009\a\n\0029\a\v\a4\t\3\0005\n\31\0>\n\1\t4\n\3\0005\v \0>\v\1\nB\a\3\2=\a\v\6B\3\3\0012\0\0�K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0" },
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
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nZ\0\3\6\0\2\2\r)\3�\0\1\3\1\0X\3\5�6\3\0\0009\3\1\3\24\5\0\1D\3\2\0X\3\4�6\3\0\0009\3\1\3\24\5\1\1D\3\2\0K\0\1\0\nfloor\tmath��̙\19����\3�̙�\6���\3�\r\1\0\v\0L\0Y6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\5\0004\6\0\0=\6\6\0055\6\b\0005\a\a\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0055\6\14\0005\a\r\0=\a\15\0065\a\16\0=\a\17\0065\a8\0005\b\19\0009\t\18\1=\t\20\b9\t\21\1=\t\22\b9\t\23\1=\t\24\b9\t\25\1=\t\26\b9\t\27\1=\t\28\b9\t\29\1=\t\30\b9\t\31\1=\t \b9\t!\1=\t\"\b9\t#\1=\t$\b9\t%\0019\n&\1 \t\n\t=\t'\b9\t%\0019\n(\1 \t\n\t=\t)\b9\t*\1=\t+\b9\t,\1=\t-\b9\t.\1=\t/\b9\t0\1=\t1\b9\t2\2=\t3\b9\t4\2=\t5\b9\t6\1=\t7\b=\b9\a=\a:\0065\a;\0005\b=\0003\t<\0=\t>\b=\b?\a5\b@\0=\bA\a5\bC\0005\tB\0=\t?\b=\bD\a=\aE\0064\a\0\0=\aF\0065\aG\0=\aH\0065\aI\0=\aJ\6=\6K\5B\3\2\1K\0\1\0\rdefaults\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\18layout_config\tflex\1\0\0\1\0\1\18preview_width\4͙��\f̙��\3\rvertical\1\0\3\nwidth\4͙��\f̙��\3\19preview_height\4\0����\3\vheight\4�̙�\6�̹�\3\15horizontal\18preview_width\1\0\0\0\1\0\3\nwidth\4�̙�\6�̹�\3\20prompt_position\btop\vheight\4��̙\3���\3\rmappings\6i\1\0\0\n<c-h>\14which_key\n<c-o>\18toggle_mirror\n<c-p>\19toggle_preview\n<c-t>\15select_tab\n<c-s>\22select_horizontal\n<c-v>\20select_vertical\t<cr>\19select_default\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\n<C-l>\19send_to_qflist\n<C-q>\28send_selected_to_qflist\n<C-k>\28move_selection_previous\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-j>\24move_selection_next\n<esc>\1\0\0\nclose\22vimgrep_arguments\1\v\0\0\arg\r--follow\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\16--no-ignore\v--trim\25file_ignore_patterns\1\0\f\20layout_strategy\15horizontal\21sorting_strategy\15descending\23selection_strategy\nreset\20scroll_strategy\ncycle\17initial_mode\vinsert\15multi_icon\a<>\17entry_prefix\a  \rwinblend\3\0\20selection_caret\t \18prompt_prefix\a> \ruse_less\2\19color_devicons\2\1\5\0\0\17node_modules\15.terraform\n%.jpg\n%.png\fpickers\fbuffers\1\0\2\26ignore_current_buffer\2\18sort_lastused\2\15find_files\1\0\0\1\0\1\vhidden\2\15extensions\1\0\0\nsetup\29telescope.actions.layout\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3�)\1\15\0L\1\2\0X\1\b�9\1\0\0\a\1\2\0X\1\5�6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14direction��̙\19����\3�\2\1\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\vborder\vsingle\rwinblend\3\3\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\17hide_numbers\2\17open_mapping\n<C-n>\14direction\15horizontal\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\0\nsetup\15toggleterm\frequire\0" },
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
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0B\1\3\1K\0\1\0\1\0\2\tmode\6n\vprefix\r<leader>\6b\1\0\0\6d\1\3\1\0\16<cmd>bd<CR>\vdelete\fnoremap\2\1\0\1\tname\vbuffer\rregister\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/christian.bargmann/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lua-dev.nvim
time([[Config for lua-dev.nvim]], true)
try_loadstring("\27LJ\2\n�\6\0\0\f\0\29\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0025\3\15\0005\4\r\0005\5\a\0005\6\5\0005\a\4\0=\a\6\6=\6\b\0055\6\t\0005\a\n\0=\a\v\6=\6\f\5=\5\14\4=\4\16\0036\4\17\0009\4\18\4'\6\19\0006\a\0\0'\t\20\0B\a\2\0029\a\21\a5\t\27\0005\n\23\0009\v\22\2=\v\22\n9\v\24\1=\v\24\n5\v\25\0=\v\26\n=\n\1\tB\a\2\2\18\b\3\0B\4\4\2\18\3\4\0009\4\28\0009\4\21\4\18\6\3\0B\4\2\1K\0\1\0\16sumneko_lua\1\0\0\bcmd\1\2\0\0\24lua-language-server\14on_attach\1\0\0\17capabilities\nsetup\flua-dev\nforce\20tbl_deep_extend\bvim\rsettings\1\0\0\bLua\1\0\0\vformat\18defaultConfig\1\0\v$keep_line_after_while_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1\16indent_size\0061!keep_line_after_if_statement\14maxLine:1\17indent_style\btab\16quote_style\vdouble)keep_line_after_expression_statement\14maxLine:1.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0", "config", "lua-dev.nvim")
time([[Config for lua-dev.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\0146\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0005\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\t\0B\1\3\1K\0\1\0\1\0\2\tmode\6n\vprefix\r<leader>\6b\1\0\0\6d\1\3\1\0\16<cmd>bd<CR>\vdelete\fnoremap\2\1\0\1\tname\vbuffer\rregister\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3�)\1\15\0L\1\2\0X\1\b�9\1\0\0\a\1\2\0X\1\5�6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14direction��̙\19����\3�\2\1\0\5\0\14\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\15float_opts\15highlights\1\0\2\vborder\vNormal\15background\vNormal\1\0\2\vborder\vsingle\rwinblend\3\3\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\17hide_numbers\2\17open_mapping\n<C-n>\14direction\15horizontal\18close_on_exit\2\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n�\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20�6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2�+\2\1\0X\3\1�+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\1\0\1\5\3\b\1 -\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\1\1B\1\1\1X\1\22�6\1\2\0009\1\3\0019\1\4\1)\3\1\0B\1\2\2\t\1\0\0X\1\5�-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\n�-\1\2\0B\1\1\2\15\0\1\0X\2\4�-\1\0\0009\1\a\1B\1\1\1X\1\2�\18\1\0\0B\1\1\1K\0\1\0\2�\1�\0�\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2�\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4�-\0\0\0009\0\1\0B\0\1\1X\0\v�6\0\2\0009\0\3\0009\0\4\0)\2��B\0\2\2\t\0\0\0X\0\4�-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\2�\1�\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2�\3\1\0\f\0\"\0C3\0\0\0003\1\1\0006\2\2\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0059\6\n\0029\6\v\0064\b\3\0005\t\f\0>\t\1\b5\t\r\0>\t\2\b4\t\3\0005\n\14\0>\n\1\tB\6\3\2=\6\v\0055\6\18\0009\a\15\0029\a\16\a5\t\17\0B\a\2\2=\a\19\0069\a\15\0023\t\20\0005\n\21\0B\a\3\2=\a\22\0069\a\15\0023\t\23\0005\n\24\0B\a\3\2=\a\25\6=\6\15\5B\3\2\0019\3\4\0029\3\26\3'\5\27\0005\6\29\0004\a\3\0005\b\28\0>\b\1\a=\a\v\6B\3\3\0019\3\4\0029\3\26\3'\5\30\0005\6!\0009\a\n\0029\a\v\a4\t\3\0005\n\31\0>\n\1\t4\n\3\0005\v \0>\v\1\nB\a\3\2=\a\v\6B\3\3\0012\0\0�K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0\0\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\16\0\0\a\0004\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3(\0005\4\"\0004\5\0\0=\5#\0044\5\0\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0035\4+\0005\5*\0=\5\31\4=\4 \3=\3,\0025\3-\0005\4/\0005\5.\0=\5\31\4=\4 \3=\0030\0025\0033\0005\0041\0005\0052\0=\5\31\4=\4 \3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\6A\16git_add_all\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\agg\24git_commit_and_push\agr\20git_revert_file\aga\17git_add_file\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\21group_empty_dirs\2\24follow_current_file\2\18show_unloaded\2\15filesystem\1\0\0\1\0\t\a]g\22next_git_modified\6f\21filter_on_submit\a[g\22prev_git_modified\6D\27fuzzy_finder_directory\6h\16navigate_up\n<c-x>\17clear_filter\6/\17fuzzy_finder\6l\rset_root\6H\18toggle_hidden\19filtered_items\1\0\4\21group_empty_dirs\1\24follow_current_file\1\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\20hide_gitignored\1\16hide_hidden\2\fvisible\1\18hide_dotfiles\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\22\6d\vdelete\6r\vrename\6C\15close_node\6x\21cut_to_clipboard\6S\15open_split\6t\16open_tabnew\f<space>\5\t<cr>\topen\6q\17close_window\6s\16open_vsplit\6c\tcopy\6?\14show_help\6<\16prev_source\n<esc>\19revert_preview\6R\frefresh\6w\topen\6m\tmove\6>\16next_source\6z\20close_all_nodes\6p\25paste_from_clipboard\6A\18add_directory\6y\22copy_to_clipboard\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\rconflict\b\frenamed\b\fdeleted\b✖\nadded\5\vstaged\b\rmodified\5\runstaged\b\fignored\b\14untracked\b\tname\1\0\3\14highlight\20NeoTreeFileName\26use_git_status_colors\2\19trailing_slash\1\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\b\17folder_empty\bﰊ\16folder_open\b\vindent\1\0\t\fpadding\3\1\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\17with_markers\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\3\6\0\2\2\r)\3�\0\1\3\1\0X\3\5�6\3\0\0009\3\1\3\24\5\0\1D\3\2\0X\3\4�6\3\0\0009\3\1\3\24\5\1\1D\3\2\0K\0\1\0\nfloor\tmath��̙\19����\3�̙�\6���\3�\r\1\0\v\0L\0Y6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0005\5\5\0004\6\0\0=\6\6\0055\6\b\0005\a\a\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0055\6\14\0005\a\r\0=\a\15\0065\a\16\0=\a\17\0065\a8\0005\b\19\0009\t\18\1=\t\20\b9\t\21\1=\t\22\b9\t\23\1=\t\24\b9\t\25\1=\t\26\b9\t\27\1=\t\28\b9\t\29\1=\t\30\b9\t\31\1=\t \b9\t!\1=\t\"\b9\t#\1=\t$\b9\t%\0019\n&\1 \t\n\t=\t'\b9\t%\0019\n(\1 \t\n\t=\t)\b9\t*\1=\t+\b9\t,\1=\t-\b9\t.\1=\t/\b9\t0\1=\t1\b9\t2\2=\t3\b9\t4\2=\t5\b9\t6\1=\t7\b=\b9\a=\a:\0065\a;\0005\b=\0003\t<\0=\t>\b=\b?\a5\b@\0=\bA\a5\bC\0005\tB\0=\t?\b=\bD\a=\aE\0064\a\0\0=\aF\0065\aG\0=\aH\0065\aI\0=\aJ\6=\6K\5B\3\2\1K\0\1\0\rdefaults\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b─\b│\b─\b│\b╭\b╮\b╯\b╰\vborder\18layout_config\tflex\1\0\0\1\0\1\18preview_width\4͙��\f̙��\3\rvertical\1\0\3\nwidth\4͙��\f̙��\3\19preview_height\4\0����\3\vheight\4�̙�\6�̹�\3\15horizontal\18preview_width\1\0\0\0\1\0\3\nwidth\4�̙�\6�̹�\3\20prompt_position\btop\vheight\4��̙\3���\3\rmappings\6i\1\0\0\n<c-h>\14which_key\n<c-o>\18toggle_mirror\n<c-p>\19toggle_preview\n<c-t>\15select_tab\n<c-s>\22select_horizontal\n<c-v>\20select_vertical\t<cr>\19select_default\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\n<C-l>\19send_to_qflist\n<C-q>\28send_selected_to_qflist\n<C-k>\28move_selection_previous\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-j>\24move_selection_next\n<esc>\1\0\0\nclose\22vimgrep_arguments\1\v\0\0\arg\r--follow\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\16--no-ignore\v--trim\25file_ignore_patterns\1\0\f\20layout_strategy\15horizontal\21sorting_strategy\15descending\23selection_strategy\nreset\20scroll_strategy\ncycle\17initial_mode\vinsert\15multi_icon\a<>\17entry_prefix\a  \rwinblend\3\0\20selection_caret\t \18prompt_prefix\a> \ruse_less\2\19color_devicons\2\1\5\0\0\17node_modules\15.terraform\n%.jpg\n%.png\fpickers\fbuffers\1\0\2\26ignore_current_buffer\2\18sort_lastused\2\15find_files\1\0\0\1\0\1\vhidden\2\15extensions\1\0\0\nsetup\29telescope.actions.layout\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\20plugins.lsp.lua\19plugins.lsp.go\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)

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
