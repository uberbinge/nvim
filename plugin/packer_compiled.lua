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
local package_path_str = "/Users/waqas.ahmed/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/waqas.ahmed/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/waqas.ahmed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/waqas.ahmed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/waqas.ahmed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\0¿\r<Ignore>\0\rschedule\a]c\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\0¿\r<Ignore>\0\rschedule\a[c\tdiff\awo\bvim§\15\1\0\b\0@\0K6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3B\1\2\0016\1\0\0'\3\28\0B\1\2\0029\2\29\0015\4=\0005\5\30\0005\6 \0003\a\31\0>\a\1\6=\6!\0055\6#\0003\a\"\0>\a\1\6=\6$\0055\6%\0=\6&\0055\6'\0=\6(\0055\6)\0=\6*\0055\6+\0=\6,\0055\6-\0=\6.\0055\6/\0=\0060\0055\0061\0=\0062\0055\0064\0005\a3\0=\a2\0065\a5\0=\a6\6=\0067\0055\0068\0=\0069\0055\6:\0=\0066\0055\6;\0=\6<\5=\5>\0045\5?\0B\2\3\0012\0\0ÄK\0\1\0\1\0\2\tmode\6n\vprefix\r<leader>\6h\1\0\0\6D\1\3\0\0!<cmd>Gitsigns diffthis ~<CR>,Gitsigns: Diff this against last commit\1\3\0\0\31<cmd>Gitsigns diffthis<CR>\24Gitsigns: Diff this\6p\1\3\0\0#<cmd>Gitsigns preview_hunk<CR>\27Gitsigns: Preview Hunk\6t\6d\1\3\0\0%<cmd>Gitsigns toggle_deleted<CR>\29Gitsigns: Toggle deleted\1\0\0\1\3\0\0000<cmd>Gitsigns toggle_current_line_blame<CR>\27Gitsigns: Toggle Blame\6b\1\3\0\0!<cmd>Gitsigns blame_line<CR>\27Gitsigns: Toggle Blame\6R\1\3\0\0#<cmd>Gitsigns reset_buffer<CR>\27Gitsigns: Reset Buffer\6r\1\3\0\0!<cmd>Gitsigns reset_hunk<CR>\25Gitsigns: Reset Hunk\6U\1\3\0\0(<cmd>Gitsigns undo_stage_buffer<CR>\19Unstage Buffer\6u\1\3\0\0&<cmd>Gitsigns undo_stage_hunk<CR>\17Unstage Hunk\6S\1\3\0\0#<cmd>Gitsigns stage_buffer<CR>\27Gitsigns: Stage Buffer\6s\1\3\1\0!<cmd>Gitsigns stage_hunk<CR>\25Gitsigns: Stage Hunk\vsilent\2\6j\1\3\0\0\0\18Previous Hunk\0\6k\1\3\0\0\0\14Next Hunk\0\1\0\1\tname\rGitsigns\rregister\14which-key\tyadm\1\0\1\venable\1\14diff_opts\1\0\1\rinternal\2\19preview_config\1\0\5\brow\3\0\vborder\vsingle\nstyle\fminimal\bcol\3\1\rrelative\vcursor&current_line_blame_formatter_opts\1\0\1\18relative_time\1\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\nsigns\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\fkeymaps\1\0\t\20max_file_length\3¿∏\2\vlinehl\1\14word_diff\1\15signcolumn\2\nnumhl\1\20update_debounce\3d\18sign_priority\3\6\23current_line_blame\1\24attach_to_untracked\2\1\0\1\fnoremap\1\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["kanagawa.nvim"] = {
    config = { "\27LJ\2\n´\3\0\0\4\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\0016\0\16\0009\0\17\0'\2\18\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\17globalStatus\1\16dimInactive\1\16transparent\2\21specialException\2\18specialReturn\2\ntheme\nlight\14undercurl\2\19terminalColors\2\nsetup\rkanagawa\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n%\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\vgetcwd\afn\bvimÚ\6\1\0\a\0/\0I3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\17\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\n\0005\6\t\0=\6\v\0054\6\0\0=\6\f\5=\5\r\0044\5\0\0=\5\14\0045\5\15\0=\5\16\4=\4\18\0035\4\20\0005\5\19\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0>\0\1\5=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\0045\5\30\0=\5\31\4=\4 \0035\4!\0004\5\0\0=\5\21\0044\5\0\0=\5\23\0045\5\"\0=\5\25\0045\5#\0=\5\27\0044\5\0\0=\5\29\0044\5\0\0=\5\31\4=\4$\0035\4&\0005\5%\0=\5\21\0045\5'\0=\5\23\0045\5(\0=\5\25\0045\5)\0=\5\27\0045\5*\0=\5\29\0045\5+\0=\5\31\4=\4,\0034\4\0\0=\4\f\0034\4\0\0=\4-\0034\4\0\0=\4.\3B\1\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\1\2\0\0\ttabs\1\2\0\0\5\1\2\0\0\5\1\2\0\0\5\1\2\0\0\5\1\0\0\1\2\0\0\fbuffers\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\3\0\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\ftabline\3Ë\a\15statusline\3Ë\a\vwinbar\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\1\2\0\0\5\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\1\0\4\17globalstatus\2\25always_divide_middle\2\18icons_enabled\2\ntheme\tauto\nsetup\flualine\frequire\0\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n˜\16\0\0\a\0004\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3(\0005\4\"\0004\5\0\0=\5#\0044\5\0\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0035\4+\0005\5*\0=\5\31\4=\4 \3=\3,\0025\3-\0005\4/\0005\5.\0=\5\31\4=\4 \3=\0030\0025\0033\0005\0041\0005\0052\0=\5\31\4=\4 \3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\aga\17git_add_file\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\agg\24git_commit_and_push\agr\20git_revert_file\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\1\0\0\1\0\t\6f\21filter_on_submit\6h\16navigate_up\6D\27fuzzy_finder_directory\6l\rset_root\n<c-x>\17clear_filter\a]g\22next_git_modified\a[g\22prev_git_modified\6/\17fuzzy_finder\6H\18toggle_hidden\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\rdisabled\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\fvisible\1\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\22\6R\frefresh\6?\14show_help\f<space>\5\6<\16prev_source\6>\16next_source\n<esc>\19revert_preview\6C\15close_node\6y\22copy_to_clipboard\6x\21cut_to_clipboard\6A\18add_directory\6c\tcopy\6p\25paste_from_clipboard\6m\tmove\6t\16open_tabnew\6S\15open_split\t<cr>\topen\6r\vrename\6s\16open_vsplit\6d\vdelete\6w\topen\6z\20close_all_nodes\6q\17close_window\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\nadded\5\fdeleted\b‚úñ\rconflict\bÓúß\vstaged\bÔÅÜ\rmodified\5\runstaged\bÔò∞\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\tname\1\0\3\26use_git_status_colors\2\19trailing_slash\1\14highlight\20NeoTreeFileName\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\16folder_open\bÓóæ\17folder_empty\bÔ∞ä\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\bÓóø\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neodev.nvim"] = {
    config = { "\27LJ\2\n¢\6\0\0\n\0\24\0&6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\3\5\0034\5\0\0B\3\2\0019\3\6\0009\3\5\0035\5\b\0005\6\a\0=\6\t\0059\6\n\2=\6\n\0059\6\v\1=\6\v\0055\6\21\0005\a\15\0005\b\r\0005\t\f\0=\t\14\b=\b\16\a5\b\17\0005\t\18\0=\t\19\b=\b\20\a=\a\22\6=\6\23\5B\3\2\1K\0\1\0\rsettings\bLua\1\0\0\vformat\18defaultConfig\1\0\v.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1)keep_line_after_expression_statement\14maxLine:1\16quote_style\vdouble\17indent_style\btab!keep_line_after_if_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1$keep_line_after_while_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1\16indent_size\0061\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\14on_attach\17capabilities\bcmd\1\0\0\1\2\0\0\24lua-language-server\16sumneko_lua\nsetup\vneodev\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neogit = {
    config = { "\27LJ\2\nª\n\0\0\t\0:\0N6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\0035\4\14\0004\5\0\0=\5\15\4=\4\16\3B\1\2\0016\1\0\0'\3\17\0B\1\2\0029\2\18\0015\0047\0005\5\19\0005\6\20\0=\6\21\0055\6\22\0005\a\23\0=\a\24\0065\a\25\0=\a\26\6=\6\24\0055\6\27\0=\6\28\0055\6\29\0005\a\30\0=\a\31\0065\a \0=\a\24\0065\a!\0=\a\21\6=\6\31\0055\6\"\0=\6#\0055\6$\0005\a%\0=\a&\0065\a'\0=\a#\6=\6&\0055\6(\0005\a)\0=\a\24\0065\a*\0=\a+\0065\a,\0=\a&\6=\6+\0055\6-\0=\6.\0055\6/\0005\a1\0009\b0\0>\b\1\a=\a2\0065\a3\0009\b0\0>\b\1\a=\a4\6=\0062\0055\0065\0=\0066\5=\0058\0045\0059\0B\2\3\1K\0\1\0\1\0\2\tmode\6n\vprefix\r<leader>\6g\1\0\0\6R\1\3\0\0\23<cmd>Git reset<CR>\15Git: Reset\6t\1\3\0\0\0\16Git: Status\6s\1\3\0\0\0\16Git: Status\topen\1\0\1\tname\15Git Status\6S\1\3\0\0\20<cmd>Neogit<CR>\16Git: Status\1\3\0\0\22<cmd>Git pull<CR>\14Git: Pull\6p\1\3\0\0\28<cmd>Git push --all<CR>\14Git: Push\1\3\0\0\28<cmd>Git push --all<CR>\18Git: Push all\1\0\1\tname\18Git Push/Pull\1\3\0\0\28<cmd>tabnew | Gclog<CR>\19Git: Log (Tab)\6l\1\3\0\0\20<cmd>Gclog!<CR>\rGit: Log\1\0\1\tname\fGit Log\6L\1\3\0\0\20<cmd>Gclog!<CR>\rGit: Log\1\3\0\0+<cmd>Git commit --verbose --ammend<CR>\25Git: Commit (ammend)\1\3\0\0(<cmd>Git commit --verbose --all<CR>\22Git: Commit (all)\6c\1\3\0\0\"<cmd>Git commit --verbose<CR>\16Git: Commit\1\0\1\tname\15Git Commit\6C\1\3\0\0\"<cmd>Git commit --verbose<CR>\16Git: Commit\6f\1\3\0\0\24<cmd>Git add :%<CR>\18Git: Add file\6a\1\3\0\0\27<cmd>Git add --all<CR>\17Git: Add all\1\0\1\tname\fGit Add\6A\1\3\0\0\27<cmd>Git add --all<CR>\17Git: Add all\1\0\1\tname\bGit\rregister\14which-key\rmappings\vstatus\1\0\0\17integrations\1\0\1\rdiffview\1\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\6>\6v\fsection\1\0\0\1\3\0\0\6>\6v\1\0\3\18disable_signs\1!disable_context_highlighting\1 disable_commit_confirmation\1\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n⁄\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\1\1\2\0\0\vstring\1\0\3\rcheck_ts\2\22ignored_next_char\v[%w%.]\30enable_check_bracket_line\1\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimo\0\2\4\1\a\0\0169\2\0\0009\2\1\2\a\2\2\0X\2\5Ä'\2\4\0=\2\3\1'\2\6\0=\2\5\1L\1\2\0009\2\3\1=\2\5\1-\2\0\0009\3\3\0018\2\3\2=\2\3\1L\1\2\0\2¿\bVim\tmenu\bÓò´\tkind\fcmdline\tname\vsource·\1\0\1\5\3\b\1\31-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\21Ä6\1\2\0009\1\3\0019\1\4\1B\1\1\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\1¿\0¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\3¿\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2˙\t\1\0\r\0B\0v6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0003\0\6\0003\1\a\0005\2\b\0006\3\t\0'\5\n\0B\3\2\0029\4\v\0035\6\14\0005\a\r\0003\b\f\0=\b\4\a=\a\15\0065\a\19\0009\b\16\0039\b\17\b9\b\18\bB\b\1\2=\b\20\a=\a\17\0065\a\22\0005\b\21\0=\b\23\a3\b\24\0=\b\25\a=\a\26\0065\a\30\0009\b\27\0039\n\27\0039\n\28\n)\f¸ˇB\n\2\0025\v\29\0B\b\3\2=\b\31\a9\b\27\0039\n\27\0039\n\28\n)\f\4\0B\n\2\0025\v \0B\b\3\2=\b!\a9\b\27\0035\n#\0009\v\27\0039\v\"\vB\v\1\2=\v$\n9\v\27\0039\v%\vB\v\1\2=\v&\nB\b\2\2=\b'\a9\b\27\0039\b(\b5\n+\0009\v)\0039\v*\v=\v,\nB\b\2\2=\b-\a9\b\27\0033\n.\0005\v/\0B\b\3\2=\b0\a9\b\27\0033\n1\0005\v2\0B\b\3\2=\b3\a=\a\27\0064\a\4\0005\b4\0>\b\1\a5\b5\0>\b\2\a5\b6\0>\b\3\a=\a7\0065\a8\0=\a9\6B\4\2\0019\4\v\0039\4:\4'\6;\0005\a=\0004\b\3\0005\t<\0>\t\1\b=\b7\aB\4\3\0019\4\v\0039\4:\4'\6>\0005\aA\0009\b\16\0039\b7\b4\n\3\0005\v?\0>\v\1\n4\v\3\0005\f@\0>\f\1\vB\b\3\2=\b7\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\17experimental\1\0\1\15ghost_text\2\fsources\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\2\tname\rnvim_lsp\rpriority\3c\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-d>\1\3\0\0\6i\6c\n<C-u>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\18documentation\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\1\0\0\0\nsetup\bcmp\frequire\1\0\25\fSnippet\bÔëè\16Constructor\bÔê£\fKeyword\bÔ†ä\nClass\bÔ¥Ø\tEnum\bÔÖù\vFolder\bÔùä\nValue\bÔ¢ü\15EnumMember\bÔÖù\tUnit\bÓàü\rProperty\bÔ∞†\vModule\bÔíá\18TypeParameter\bÔô±\14Interface\bÔÉ®\rOperator\bÔöî\nField\bÔõº\nEvent\bÔÉß\rVariable\bÔñï\vStruct\bÔÜ≥\rFunction\bÔûî\rConstant\bÔ£æ\vMethod\bÔö¶\tText\bÓòí\14Reference\bÔíÅ\tFile\bÔúò\nColor\bÔ£ó\0\0\25~/.config/nvim/vsnip\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nÀ\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\21plugins.lsp.yaml\23plugins.lsp.docker\26plugins.lsp.terraform\27plugins.lsp.typescript\20plugins.lsp.lua\19plugins.lsp.go\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n†\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\19ignore_install\1\2\0\0\vphpdoc\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\nú\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\5\0\0\t.git\r.project\vgo.mod\15.terraform\22detection_methods\1\0\0\1\2\0\0\fpattern\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nZ\0\3\6\0\2\2\r)\3»\0\1\3\1\0X\3\5Ä6\3\0\0009\3\1\3\24\5\0\1D\3\2\0X\3\4Ä6\3\0\0009\3\1\3\24\5\1\1D\3\2\0K\0\1\0\nfloor\tmathµÊÃô\19ô≥Ê˛\3ÁÃô≥\6≥Êåˇ\3î\17\1\0\f\0f\0Å\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\1\0B\3\2\0029\3\4\0039\3\5\0039\3\6\0039\4\a\0005\6\30\0005\a\27\0005\b\b\0005\t\24\0005\n\n\0009\v\t\3=\v\v\n9\v\f\3=\v\r\n9\v\14\3=\v\15\n9\v\16\3=\v\17\n9\v\18\3=\v\19\n9\v\20\3=\v\21\n9\v\22\3=\v\23\n=\n\25\t=\t\26\b=\b\5\a5\b\28\0=\b\29\a=\a\4\0065\a \0005\b\31\0=\b!\a5\b\"\0=\b#\a5\b$\0=\b%\a5\b&\0=\b'\a5\b(\0=\b\29\a=\a)\0065\a+\0005\b*\0=\b,\a5\b-\0=\b.\a5\bS\0005\t0\0009\n/\1=\n1\t9\n2\1=\n3\t9\n4\1=\n5\t9\n6\1=\n7\t9\n8\1=\n9\t9\n:\1=\n;\t9\n<\1=\n=\t9\n>\1=\n?\t9\n@\1=\nA\t9\nB\0019\vC\1 \n\v\n=\nD\t9\nB\0019\vE\1 \n\v\n=\nF\t9\nG\1=\nH\t9\nI\1=\nJ\t9\nK\1=\nL\t9\nM\1=\nN\t9\nO\2=\n\19\t9\nP\2=\nQ\t9\nR\1=\n\15\t=\t\25\b=\b\26\a5\bT\0005\tV\0003\nU\0=\nW\t=\tX\b5\tY\0=\tZ\b5\t\\\0005\n[\0=\nX\t=\t]\b=\b^\a4\b\0\0=\b_\a5\b`\0=\ba\a5\bb\0=\bc\a=\ad\6B\4\2\0019\4e\0'\6\5\0B\4\2\0019\4e\0'\6\29\0B\4\2\1K\0\1\0\19load_extension\rdefaults\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\18layout_config\tflex\1\0\0\1\0\1\18preview_width\4Õô≥Ê\fÃô≥ˇ\3\rvertical\1\0\3\vheight\4ÊÃô≥\6ÊÃπˇ\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\19preview_height\4\0ÄÄÄˇ\3\15horizontal\18preview_width\1\0\0\0\1\0\3\20prompt_position\btop\nwidth\4ÊÃô≥\6ÊÃπˇ\3\vheight\4≥ÊÃô\3≥Ê¨ˇ\3\1\0\0\14which_key\n<c-o>\18toggle_mirror\19toggle_preview\n<c-t>\15select_tab\n<c-s>\22select_horizontal\n<c-v>\20select_vertical\t<cr>\19select_default\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\n<C-l>\19send_to_qflist\n<C-q>\28send_selected_to_qflist\n<C-k>\28move_selection_previous\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-j>\24move_selection_next\n<esc>\1\0\0\nclose\25file_ignore_patterns\1\t\0\0\r%.git/.*\r%.vim/.*\20node_modules/.*\14%.idea/.*\14vendor/.*\16%.vscode/.*\17%.history/.*\15.terraform\22vimgrep_arguments\1\0\f\20scroll_strategy\ncycle\17initial_mode\vinsert\15multi_icon\a<>\17entry_prefix\a  \20selection_caret\tÔÅ§ \18prompt_prefix\a> \ruse_less\2\19color_devicons\2\rwinblend\3\0\20layout_strategy\vcenter\21sorting_strategy\14ascending\23selection_strategy\nreset\1\v\0\0\arg\r--follow\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\16--no-ignore\v--trim\fpickers\1\0\1\ntheme\bivy\roldfiles\1\0\1\ntheme\bivy\14live_grep\1\0\1\ntheme\bivy\fbuffers\1\0\3\ntheme\bivy\18sort_lastused\2\26ignore_current_buffer\2\15find_files\1\0\0\1\0\2\ntheme\bivy\vhidden\2\1\0\0\rprojects\1\0\1\ntheme\bivy\1\0\0\rmappings\6i\1\0\0\n<c-a>\15select_all\n<c-y>\tcopy\n<c-p>\tmove\n<c-x>\vremove\n<c-h>\18toggle_hidden\n<c-r>\vrename\n<c-n>\1\0\0\vcreate\1\0\3\ntheme\bivy\vhidden\2\17hijack_netrw\2\nsetup\factions\17file_browser\15extensions\29telescope.actions.layout\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3Ä)\1\20\0L\1\2\0X\1\bÄ9\1\0\0\a\1\2\0X\1\5Ä6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµÊÃô\19ô≥Ê˛\3»\3\1\0\6\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\0016\0\a\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\15<C-\\><C-n>\n<ESC>\6t\bset\vkeymap\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vsingle\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-n>\14direction\btab\18close_on_exit\2\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n°\f\0\0\6\0003\0C6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0005\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\0045\5\21\0=\5\22\4=\4\14\0035\4\23\0005\5\24\0=\5\14\0045\5\25\0=\5\26\0045\5\27\0=\5\22\0045\5\28\0=\5\29\0045\5\30\0=\5\31\0045\5 \0=\5!\4=\4\22\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\4=\4'\0035\4(\0005\5)\0=\5!\0045\5*\0=\5\22\0045\5+\0=\5\29\0045\5,\0=\5-\0045\5.\0=\5\31\0045\5/\0=\5&\0045\0050\0=\5\14\4=\4!\0035\0041\0005\0052\0>\5\1\4B\1\3\1K\0\1\0\1\0\1\vsilent\2\1\0\2\tmode\6n\vprefix\r<leader>\1\3\0\0\31<cmd>Telescope buffers<cr>\22List open buffers\1\3\0\0 <cmd>Telescope projects<cr>\22List all projects\1\3\0\0\30<cmd>Telescope resume<cr>\23Resume last picker\6o\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\1\3\0\0!<cmd>Telescope live_grep<cr>\17Find in File\1\3\0\0.<cmd>Telescope find_files hidden=true<cr>\14Find File\1\3\0\0\24<cmd>Telescope <cr>\vSearch\1\0\1\tname\vSearch\6m\6p\1\3\0\0\"<cmd>PackerSync --preview<cr>\15PackerSync\6w\1\3\0\0\"<cmd>cd %:p:h<cr><cmd>pwd<cr>(Change to directory of current file\1\0\1\tname\tMisc\6s\1\3\0\0\15<cmd>w<cr>\16Save Buffer\6r\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\17Find in File\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\6a\1\3\0\0!<cmd>Telescope git_files<cr>\18Find Git File\1\3\0\0A<cmd>Telescope file_browser grouped=true cwd=~/workspace<cr>\17File browser\1\0\1\tname\nFiles\6f\1\3\0\0.<cmd>Neotree action=focus reveal=true<CR>\31Find file in file explorer\6D\1\3\0\0\24<cmd>%bd|e#|bd#<cr>%Close all but the current buffer\6d\1\3\0\0\17<cmd>bd!<CR>\17Close buffer\6B\1\3\0\0\31<cmd>Telescope buffers<cr>\22Find buffer (All)\6b\1\3\0\0-<cmd>Telescope buffers only_cwd=true<cr>\31Find buffer (Current Path)\1\0\1\tname\fBuffers\6q\1\3\0\0#<cmd>Neotree reveal toggle<cr>\29Neotree: Toggle Filetree\n<Tab>\1\0\0\1\3\0\0\16<cmd>e#<cr>\16Prev buffer\rregister\vlayout\1\0\0\1\0\1\nalign\tleft\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/Users/waqas.ahmed/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n–\1\0\0\b\0\b\2!6\0\0\0006\2\1\0009\2\2\0029\2\3\2)\4\0\0B\2\2\0A\0\0\3\b\1\0\0X\2\20Ä6\2\1\0009\2\2\0029\2\4\2)\4\0\0\23\5\1\0\18\6\0\0+\a\2\0B\2\5\2:\2\1\2\18\4\2\0009\2\5\2\18\5\1\0\18\6\1\0B\2\4\2\18\4\2\0009\2\6\2'\5\a\0B\2\3\2\n\2\0\0X\2\2Ä+\2\1\0X\3\1Ä+\2\2\0L\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2p\0\2\n\0\4\0\0156\2\0\0009\2\1\0029\2\2\0026\4\0\0009\4\1\0049\4\3\4\18\6\0\0+\a\2\0+\b\2\0+\t\2\0B\4\5\2\18\5\1\0+\6\2\0B\2\4\1K\0\1\0\27nvim_replace_termcodes\18nvim_feedkeys\bapi\bvim;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimo\0\2\4\1\a\0\0169\2\0\0009\2\1\2\a\2\2\0X\2\5Ä'\2\4\0=\2\3\1'\2\6\0=\2\5\1L\1\2\0009\2\3\1=\2\5\1-\2\0\0009\3\3\0018\2\3\2=\2\3\1L\1\2\0\2¿\bVim\tmenu\bÓò´\tkind\fcmdline\tname\vsource·\1\0\1\5\3\b\1\31-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\21Ä6\1\2\0009\1\3\0019\1\4\1B\1\1\2\t\1\0\0X\1\5Ä-\1\1\0'\3\5\0'\4\6\0B\1\3\1X\1\nÄ-\1\2\0B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\a\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\3¿\1¿\0¿\rcomplete\5!<Plug>(vsnip-expand-or-jump)\20vsnip#available\afn\bvim\21select_next_item\fvisible\2®\1\0\0\4\2\a\1\21-\0\0\0009\0\0\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0009\0\1\0B\0\1\1X\0\vÄ6\0\2\0009\0\3\0009\0\4\0)\2ˇˇB\0\2\2\t\0\0\0X\0\4Ä-\0\1\0'\2\5\0'\3\6\0B\0\3\1K\0\1\0\3¿\1¿\5\28<Plug>(vsnip-jump-prev)\19vsnip#jumpable\afn\bvim\21select_prev_item\fvisible\2˙\t\1\0\r\0B\0v6\0\0\0009\0\1\0006\1\0\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2=\1\2\0003\0\6\0003\1\a\0005\2\b\0006\3\t\0'\5\n\0B\3\2\0029\4\v\0035\6\14\0005\a\r\0003\b\f\0=\b\4\a=\a\15\0065\a\19\0009\b\16\0039\b\17\b9\b\18\bB\b\1\2=\b\20\a=\a\17\0065\a\22\0005\b\21\0=\b\23\a3\b\24\0=\b\25\a=\a\26\0065\a\30\0009\b\27\0039\n\27\0039\n\28\n)\f¸ˇB\n\2\0025\v\29\0B\b\3\2=\b\31\a9\b\27\0039\n\27\0039\n\28\n)\f\4\0B\n\2\0025\v \0B\b\3\2=\b!\a9\b\27\0035\n#\0009\v\27\0039\v\"\vB\v\1\2=\v$\n9\v\27\0039\v%\vB\v\1\2=\v&\nB\b\2\2=\b'\a9\b\27\0039\b(\b5\n+\0009\v)\0039\v*\v=\v,\nB\b\2\2=\b-\a9\b\27\0033\n.\0005\v/\0B\b\3\2=\b0\a9\b\27\0033\n1\0005\v2\0B\b\3\2=\b3\a=\a\27\0064\a\4\0005\b4\0>\b\1\a5\b5\0>\b\2\a5\b6\0>\b\3\a=\a7\0065\a8\0=\a9\6B\4\2\0019\4\v\0039\4:\4'\6;\0005\a=\0004\b\3\0005\t<\0>\t\1\b=\b7\aB\4\3\0019\4\v\0039\4:\4'\6>\0005\aA\0009\b\16\0039\b7\b4\n\3\0005\v?\0>\v\1\n4\v\3\0005\f@\0>\f\1\vB\b\3\2=\b7\aB\4\3\0012\0\0ÄK\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\17experimental\1\0\1\15ghost_text\2\fsources\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\2\tname\rnvim_lsp\rpriority\3c\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-d>\1\3\0\0\6i\6c\n<C-u>\1\0\0\1\3\0\0\6i\6c\16scroll_docs\fmapping\15formatting\vformat\0\vfields\1\0\0\1\4\0\0\tkind\tabbr\tmenu\18documentation\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\1\0\0\0\nsetup\bcmp\frequire\1\0\25\fSnippet\bÔëè\16Constructor\bÔê£\fKeyword\bÔ†ä\nClass\bÔ¥Ø\tEnum\bÔÖù\vFolder\bÔùä\nValue\bÔ¢ü\15EnumMember\bÔÖù\tUnit\bÓàü\rProperty\bÔ∞†\vModule\bÔíá\18TypeParameter\bÔô±\14Interface\bÔÉ®\rOperator\bÔöî\nField\bÔõº\nEvent\bÔÉß\rVariable\bÔñï\vStruct\bÔÜ≥\rFunction\bÔûî\rConstant\bÔ£æ\vMethod\bÔö¶\tText\bÓòí\14Reference\bÔíÅ\tFile\bÔúò\nColor\bÔ£ó\0\0\25~/.config/nvim/vsnip\vexpand\afn\22vsnip_snippet_dir\6g\bvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: octo.nvim
time([[Config for octo.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\tocto\frequire\0", "config", "octo.nvim")
time([[Config for octo.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\ny\0\1\2\0\6\1\0159\1\0\0\a\1\1\0X\1\3Ä)\1\20\0L\1\2\0X\1\bÄ9\1\0\0\a\1\2\0X\1\5Ä6\1\3\0009\1\4\0019\1\5\1\24\1\0\1L\1\2\0K\0\1\0\fcolumns\6o\bvim\rvertical\15horizontal\14directionµÊÃô\19ô≥Ê˛\3»\3\1\0\6\0\20\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\0024\3\0\0=\3\6\0026\3\a\0009\3\b\0039\3\t\3=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\2B\0\2\0016\0\a\0009\0\14\0009\0\15\0'\2\16\0'\3\17\0'\4\18\0005\5\19\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\15<C-\\><C-n>\n<ESC>\6t\bset\vkeymap\15float_opts\15highlights\1\0\2\15background\vNormal\vborder\vNormal\1\0\2\rwinblend\3\3\vborder\vsingle\nshell\6o\bvim\20shade_filetypes\tsize\1\0\t\17persist_size\2\20insert_mappings\2\20start_in_insert\2\19shading_factor\0061\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<C-n>\14direction\btab\18close_on_exit\2\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14next_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\0¿\r<Ignore>\0\rschedule\a]c\tdiff\awo\bvim#\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\0\0\14prev_hunkg\1\0\3\1\a\0\0156\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\2Ä'\0\3\0002\0\aÄ6\0\0\0009\0\4\0003\2\5\0B\0\2\1'\0\6\0002\0\0ÄL\0\2\0L\0\2\0\0¿\r<Ignore>\0\rschedule\a[c\tdiff\awo\bvim§\15\1\0\b\0@\0K6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\0035\4\a\0005\5\6\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\4=\4\17\0035\4\18\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\3B\1\2\0016\1\0\0'\3\28\0B\1\2\0029\2\29\0015\4=\0005\5\30\0005\6 \0003\a\31\0>\a\1\6=\6!\0055\6#\0003\a\"\0>\a\1\6=\6$\0055\6%\0=\6&\0055\6'\0=\6(\0055\6)\0=\6*\0055\6+\0=\6,\0055\6-\0=\6.\0055\6/\0=\0060\0055\0061\0=\0062\0055\0064\0005\a3\0=\a2\0065\a5\0=\a6\6=\0067\0055\0068\0=\0069\0055\6:\0=\0066\0055\6;\0=\6<\5=\5>\0045\5?\0B\2\3\0012\0\0ÄK\0\1\0\1\0\2\tmode\6n\vprefix\r<leader>\6h\1\0\0\6D\1\3\0\0!<cmd>Gitsigns diffthis ~<CR>,Gitsigns: Diff this against last commit\1\3\0\0\31<cmd>Gitsigns diffthis<CR>\24Gitsigns: Diff this\6p\1\3\0\0#<cmd>Gitsigns preview_hunk<CR>\27Gitsigns: Preview Hunk\6t\6d\1\3\0\0%<cmd>Gitsigns toggle_deleted<CR>\29Gitsigns: Toggle deleted\1\0\0\1\3\0\0000<cmd>Gitsigns toggle_current_line_blame<CR>\27Gitsigns: Toggle Blame\6b\1\3\0\0!<cmd>Gitsigns blame_line<CR>\27Gitsigns: Toggle Blame\6R\1\3\0\0#<cmd>Gitsigns reset_buffer<CR>\27Gitsigns: Reset Buffer\6r\1\3\0\0!<cmd>Gitsigns reset_hunk<CR>\25Gitsigns: Reset Hunk\6U\1\3\0\0(<cmd>Gitsigns undo_stage_buffer<CR>\19Unstage Buffer\6u\1\3\0\0&<cmd>Gitsigns undo_stage_hunk<CR>\17Unstage Hunk\6S\1\3\0\0#<cmd>Gitsigns stage_buffer<CR>\27Gitsigns: Stage Buffer\6s\1\3\1\0!<cmd>Gitsigns stage_hunk<CR>\25Gitsigns: Stage Hunk\vsilent\2\6j\1\3\0\0\0\18Previous Hunk\0\6k\1\3\0\0\0\14Next Hunk\0\1\0\1\tname\rGitsigns\rregister\14which-key\tyadm\1\0\1\venable\1\14diff_opts\1\0\1\rinternal\2\19preview_config\1\0\5\brow\3\0\vborder\vsingle\nstyle\fminimal\bcol\3\1\rrelative\vcursor&current_line_blame_formatter_opts\1\0\1\18relative_time\1\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\nsigns\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\fkeymaps\1\0\t\20max_file_length\3¿∏\2\vlinehl\1\14word_diff\1\15signcolumn\2\nnumhl\1\20update_debounce\3d\18sign_priority\3\6\23current_line_blame\1\24attach_to_untracked\2\1\0\1\fnoremap\1\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\3\0\a\0\0196\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\0016\0\0\0'\2\3\0B\0\2\0016\0\0\0'\2\4\0B\0\2\0016\0\0\0'\2\5\0B\0\2\0016\0\0\0'\2\6\0B\0\2\1K\0\1\0\21plugins.lsp.yaml\23plugins.lsp.docker\26plugins.lsp.terraform\27plugins.lsp.typescript\20plugins.lsp.lua\19plugins.lsp.go\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\nª\n\0\0\t\0:\0N6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\4=\4\v\0035\4\f\0=\4\r\0035\4\14\0004\5\0\0=\5\15\4=\4\16\3B\1\2\0016\1\0\0'\3\17\0B\1\2\0029\2\18\0015\0047\0005\5\19\0005\6\20\0=\6\21\0055\6\22\0005\a\23\0=\a\24\0065\a\25\0=\a\26\6=\6\24\0055\6\27\0=\6\28\0055\6\29\0005\a\30\0=\a\31\0065\a \0=\a\24\0065\a!\0=\a\21\6=\6\31\0055\6\"\0=\6#\0055\6$\0005\a%\0=\a&\0065\a'\0=\a#\6=\6&\0055\6(\0005\a)\0=\a\24\0065\a*\0=\a+\0065\a,\0=\a&\6=\6+\0055\6-\0=\6.\0055\6/\0005\a1\0009\b0\0>\b\1\a=\a2\0065\a3\0009\b0\0>\b\1\a=\a4\6=\0062\0055\0065\0=\0066\5=\0058\0045\0059\0B\2\3\1K\0\1\0\1\0\2\tmode\6n\vprefix\r<leader>\6g\1\0\0\6R\1\3\0\0\23<cmd>Git reset<CR>\15Git: Reset\6t\1\3\0\0\0\16Git: Status\6s\1\3\0\0\0\16Git: Status\topen\1\0\1\tname\15Git Status\6S\1\3\0\0\20<cmd>Neogit<CR>\16Git: Status\1\3\0\0\22<cmd>Git pull<CR>\14Git: Pull\6p\1\3\0\0\28<cmd>Git push --all<CR>\14Git: Push\1\3\0\0\28<cmd>Git push --all<CR>\18Git: Push all\1\0\1\tname\18Git Push/Pull\1\3\0\0\28<cmd>tabnew | Gclog<CR>\19Git: Log (Tab)\6l\1\3\0\0\20<cmd>Gclog!<CR>\rGit: Log\1\0\1\tname\fGit Log\6L\1\3\0\0\20<cmd>Gclog!<CR>\rGit: Log\1\3\0\0+<cmd>Git commit --verbose --ammend<CR>\25Git: Commit (ammend)\1\3\0\0(<cmd>Git commit --verbose --all<CR>\22Git: Commit (all)\6c\1\3\0\0\"<cmd>Git commit --verbose<CR>\16Git: Commit\1\0\1\tname\15Git Commit\6C\1\3\0\0\"<cmd>Git commit --verbose<CR>\16Git: Commit\6f\1\3\0\0\24<cmd>Git add :%<CR>\18Git: Add file\6a\1\3\0\0\27<cmd>Git add --all<CR>\17Git: Add all\1\0\1\tname\fGit Add\6A\1\3\0\0\27<cmd>Git add --all<CR>\17Git: Add all\1\0\1\tname\bGit\rregister\14which-key\rmappings\vstatus\1\0\0\17integrations\1\0\1\rdiffview\1\nsigns\thunk\1\3\0\0\5\5\titem\1\3\0\0\6>\6v\fsection\1\0\0\1\3\0\0\6>\6v\1\0\3\18disable_signs\1!disable_context_highlighting\1 disable_commit_confirmation\1\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n⁄\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\1\1\2\0\0\vstring\1\0\3\rcheck_ts\2\22ignored_next_char\v[%w%.]\30enable_check_bracket_line\1\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: kanagawa.nvim
time([[Config for kanagawa.nvim]], true)
try_loadstring("\27LJ\2\n´\3\0\0\4\0\19\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0024\3\0\0=\3\6\0025\3\a\0=\3\b\0025\3\t\0=\3\n\0024\3\0\0=\3\v\0025\3\f\0=\3\r\0024\3\0\0=\3\14\0024\3\0\0=\3\15\2B\0\2\0016\0\16\0009\0\17\0'\2\18\0B\0\2\1K\0\1\0\25colorscheme kanagawa\bcmd\bvim\14overrides\vcolors\25variablebuiltinStyle\1\0\1\vitalic\2\14typeStyle\19statementStyle\1\0\1\tbold\2\17keywordStyle\1\0\1\vitalic\2\18functionStyle\17commentStyle\1\0\1\vitalic\2\1\0\b\17globalStatus\1\16dimInactive\1\16transparent\2\21specialException\2\18specialReturn\2\ntheme\nlight\14undercurl\2\19terminalColors\2\nsetup\rkanagawa\frequire\0", "config", "kanagawa.nvim")
time([[Config for kanagawa.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n†\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\19ignore_install\1\2\0\0\vphpdoc\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\nú\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\5\0\0\t.git\r.project\vgo.mod\15.terraform\22detection_methods\1\0\0\1\2\0\0\fpattern\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\3\6\0\2\2\r)\3»\0\1\3\1\0X\3\5Ä6\3\0\0009\3\1\3\24\5\0\1D\3\2\0X\3\4Ä6\3\0\0009\3\1\3\24\5\1\1D\3\2\0K\0\1\0\nfloor\tmathµÊÃô\19ô≥Ê˛\3ÁÃô≥\6≥Êåˇ\3î\17\1\0\f\0f\0Å\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\1\0B\3\2\0029\3\4\0039\3\5\0039\3\6\0039\4\a\0005\6\30\0005\a\27\0005\b\b\0005\t\24\0005\n\n\0009\v\t\3=\v\v\n9\v\f\3=\v\r\n9\v\14\3=\v\15\n9\v\16\3=\v\17\n9\v\18\3=\v\19\n9\v\20\3=\v\21\n9\v\22\3=\v\23\n=\n\25\t=\t\26\b=\b\5\a5\b\28\0=\b\29\a=\a\4\0065\a \0005\b\31\0=\b!\a5\b\"\0=\b#\a5\b$\0=\b%\a5\b&\0=\b'\a5\b(\0=\b\29\a=\a)\0065\a+\0005\b*\0=\b,\a5\b-\0=\b.\a5\bS\0005\t0\0009\n/\1=\n1\t9\n2\1=\n3\t9\n4\1=\n5\t9\n6\1=\n7\t9\n8\1=\n9\t9\n:\1=\n;\t9\n<\1=\n=\t9\n>\1=\n?\t9\n@\1=\nA\t9\nB\0019\vC\1 \n\v\n=\nD\t9\nB\0019\vE\1 \n\v\n=\nF\t9\nG\1=\nH\t9\nI\1=\nJ\t9\nK\1=\nL\t9\nM\1=\nN\t9\nO\2=\n\19\t9\nP\2=\nQ\t9\nR\1=\n\15\t=\t\25\b=\b\26\a5\bT\0005\tV\0003\nU\0=\nW\t=\tX\b5\tY\0=\tZ\b5\t\\\0005\n[\0=\nX\t=\t]\b=\b^\a4\b\0\0=\b_\a5\b`\0=\ba\a5\bb\0=\bc\a=\ad\6B\4\2\0019\4e\0'\6\5\0B\4\2\0019\4e\0'\6\29\0B\4\2\1K\0\1\0\19load_extension\rdefaults\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\18layout_config\tflex\1\0\0\1\0\1\18preview_width\4Õô≥Ê\fÃô≥ˇ\3\rvertical\1\0\3\vheight\4ÊÃô≥\6ÊÃπˇ\3\nwidth\4Õô≥Ê\fÃô≥ˇ\3\19preview_height\4\0ÄÄÄˇ\3\15horizontal\18preview_width\1\0\0\0\1\0\3\20prompt_position\btop\nwidth\4ÊÃô≥\6ÊÃπˇ\3\vheight\4≥ÊÃô\3≥Ê¨ˇ\3\1\0\0\14which_key\n<c-o>\18toggle_mirror\19toggle_preview\n<c-t>\15select_tab\n<c-s>\22select_horizontal\n<c-v>\20select_vertical\t<cr>\19select_default\f<S-Tab>\26move_selection_better\n<Tab>\25move_selection_worse\21toggle_selection\n<C-l>\19send_to_qflist\n<C-q>\28send_selected_to_qflist\n<C-k>\28move_selection_previous\n<C-d>\27preview_scrolling_down\n<C-u>\25preview_scrolling_up\15<PageDown>\27results_scrolling_down\r<PageUp>\25results_scrolling_up\n<C-j>\24move_selection_next\n<esc>\1\0\0\nclose\25file_ignore_patterns\1\t\0\0\r%.git/.*\r%.vim/.*\20node_modules/.*\14%.idea/.*\14vendor/.*\16%.vscode/.*\17%.history/.*\15.terraform\22vimgrep_arguments\1\0\f\20scroll_strategy\ncycle\17initial_mode\vinsert\15multi_icon\a<>\17entry_prefix\a  \20selection_caret\tÔÅ§ \18prompt_prefix\a> \ruse_less\2\19color_devicons\2\rwinblend\3\0\20layout_strategy\vcenter\21sorting_strategy\14ascending\23selection_strategy\nreset\1\v\0\0\arg\r--follow\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\16--no-ignore\v--trim\fpickers\1\0\1\ntheme\bivy\roldfiles\1\0\1\ntheme\bivy\14live_grep\1\0\1\ntheme\bivy\fbuffers\1\0\3\ntheme\bivy\18sort_lastused\2\26ignore_current_buffer\2\15find_files\1\0\0\1\0\2\ntheme\bivy\vhidden\2\1\0\0\rprojects\1\0\1\ntheme\bivy\1\0\0\rmappings\6i\1\0\0\n<c-a>\15select_all\n<c-y>\tcopy\n<c-p>\tmove\n<c-x>\vremove\n<c-h>\18toggle_hidden\n<c-r>\vrename\n<c-n>\1\0\0\vcreate\1\0\3\ntheme\bivy\vhidden\2\17hijack_netrw\2\nsetup\factions\17file_browser\15extensions\29telescope.actions.layout\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n%\0\0\2\0\3\0\0046\0\0\0009\0\1\0009\0\2\0D\0\1\0\vgetcwd\afn\bvimÚ\6\1\0\a\0/\0I3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\17\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\n\0005\6\t\0=\6\v\0054\6\0\0=\6\f\5=\5\r\0044\5\0\0=\5\14\0045\5\15\0=\5\16\4=\4\18\0035\4\20\0005\5\19\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0>\0\1\5=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\0045\5\30\0=\5\31\4=\4 \0035\4!\0004\5\0\0=\5\21\0044\5\0\0=\5\23\0045\5\"\0=\5\25\0045\5#\0=\5\27\0044\5\0\0=\5\29\0044\5\0\0=\5\31\4=\4$\0035\4&\0005\5%\0=\5\21\0045\5'\0=\5\23\0045\5(\0=\5\25\0045\5)\0=\5\27\0045\5*\0=\5\29\0045\5+\0=\5\31\4=\4,\0034\4\0\0=\4\f\0034\4\0\0=\4-\0034\4\0\0=\4.\3B\1\2\1K\0\1\0\15extensions\20inactive_winbar\ftabline\1\2\0\0\ttabs\1\2\0\0\5\1\2\0\0\5\1\2\0\0\5\1\2\0\0\5\1\0\0\1\2\0\0\fbuffers\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\3\0\0\0\rfilename\14lualine_b\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\frefresh\1\0\3\ftabline\3Ë\a\15statusline\3Ë\a\vwinbar\3Ë\a\17ignore_focus\23disabled_filetypes\vwinbar\15statusline\1\0\0\1\2\0\0\5\23section_separators\1\0\2\nright\5\tleft\5\25component_separators\1\0\2\nright\5\tleft\5\1\0\4\17globalstatus\2\25always_divide_middle\2\18icons_enabled\2\ntheme\tauto\nsetup\flualine\frequire\0\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: neodev.nvim
time([[Config for neodev.nvim]], true)
try_loadstring("\27LJ\2\n¢\6\0\0\n\0\24\0&6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0026\3\0\0'\5\4\0B\3\2\0029\3\5\0034\5\0\0B\3\2\0019\3\6\0009\3\5\0035\5\b\0005\6\a\0=\6\t\0059\6\n\2=\6\n\0059\6\v\1=\6\v\0055\6\21\0005\a\15\0005\b\r\0005\t\f\0=\t\14\b=\b\16\a5\b\17\0005\t\18\0=\t\19\b=\b\20\a=\a\22\6=\6\23\5B\3\2\1K\0\1\0\rsettings\bLua\1\0\0\vformat\18defaultConfig\1\0\v.keep_line_after_function_define_statement\15keepLine:1.keep_line_after_local_or_assign_statement\14maxLine:1)keep_line_after_expression_statement\14maxLine:1\16quote_style\vdouble\17indent_style\btab!keep_line_after_if_statement\14maxLine:1!keep_line_after_do_statement\14maxLine:1$keep_line_after_while_statement\14maxLine:1%keep_line_after_repeat_statement\14maxLine:1\"keep_line_after_for_statement\14maxLine:1\16indent_size\0061\1\0\1\venable\2\16diagnostics\1\0\0\21neededFileStatus\1\0\0\1\0\1\20codestyle-check\bAny\14on_attach\17capabilities\bcmd\1\0\0\1\2\0\0\24lua-language-server\16sumneko_lua\nsetup\vneodev\26plugins.nvim-cmp.init\14functions\14lspconfig\frequire\0", "config", "neodev.nvim")
time([[Config for neodev.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n°\f\0\0\6\0003\0C6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0005\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0005\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\0045\5\21\0=\5\22\4=\4\14\0035\4\23\0005\5\24\0=\5\14\0045\5\25\0=\5\26\0045\5\27\0=\5\22\0045\5\28\0=\5\29\0045\5\30\0=\5\31\0045\5 \0=\5!\4=\4\22\0035\4\"\0005\5#\0=\5$\0045\5%\0=\5&\4=\4'\0035\4(\0005\5)\0=\5!\0045\5*\0=\5\22\0045\5+\0=\5\29\0045\5,\0=\5-\0045\5.\0=\5\31\0045\5/\0=\5&\0045\0050\0=\5\14\4=\4!\0035\0041\0005\0052\0>\5\1\4B\1\3\1K\0\1\0\1\0\1\vsilent\2\1\0\2\tmode\6n\vprefix\r<leader>\1\3\0\0\31<cmd>Telescope buffers<cr>\22List open buffers\1\3\0\0 <cmd>Telescope projects<cr>\22List all projects\1\3\0\0\30<cmd>Telescope resume<cr>\23Resume last picker\6o\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\1\3\0\0!<cmd>Telescope live_grep<cr>\17Find in File\1\3\0\0.<cmd>Telescope find_files hidden=true<cr>\14Find File\1\3\0\0\24<cmd>Telescope <cr>\vSearch\1\0\1\tname\vSearch\6m\6p\1\3\0\0\"<cmd>PackerSync --preview<cr>\15PackerSync\6w\1\3\0\0\"<cmd>cd %:p:h<cr><cmd>pwd<cr>(Change to directory of current file\1\0\1\tname\tMisc\6s\1\3\0\0\15<cmd>w<cr>\16Save Buffer\6r\1\3\0\0 <cmd>Telescope oldfiles<cr>\21Open Recent File\6g\1\3\0\0!<cmd>Telescope live_grep<cr>\17Find in File\1\3\0\0\"<cmd>Telescope find_files<cr>\14Find File\6a\1\3\0\0!<cmd>Telescope git_files<cr>\18Find Git File\1\3\0\0A<cmd>Telescope file_browser grouped=true cwd=~/workspace<cr>\17File browser\1\0\1\tname\nFiles\6f\1\3\0\0.<cmd>Neotree action=focus reveal=true<CR>\31Find file in file explorer\6D\1\3\0\0\24<cmd>%bd|e#|bd#<cr>%Close all but the current buffer\6d\1\3\0\0\17<cmd>bd!<CR>\17Close buffer\6B\1\3\0\0\31<cmd>Telescope buffers<cr>\22Find buffer (All)\6b\1\3\0\0-<cmd>Telescope buffers only_cwd=true<cr>\31Find buffer (Current Path)\1\0\1\tname\fBuffers\6q\1\3\0\0#<cmd>Neotree reveal toggle<cr>\29Neotree: Toggle Filetree\n<Tab>\1\0\0\1\3\0\0\16<cmd>e#<cr>\16Prev buffer\rregister\vlayout\1\0\0\1\0\1\nalign\tleft\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n˜\16\0\0\a\0004\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\16\0005\5\15\0=\5\17\4=\4\18\3=\3\19\0025\3\20\0005\4\21\0=\4\22\0035\4\23\0005\5\24\0005\6\25\0=\6\26\5=\5\27\0045\5\28\0005\6\29\0=\6\26\5=\5\30\4=\4\31\3=\3 \0024\3\0\0=\3!\0025\3(\0005\4\"\0004\5\0\0=\5#\0044\5\0\0=\5$\0044\5\0\0=\5%\0044\5\0\0=\5&\0044\5\0\0=\5'\4=\4)\0035\4+\0005\5*\0=\5\31\4=\4 \3=\3,\0025\3-\0005\4/\0005\5.\0=\5\31\4=\4 \3=\0030\0025\0033\0005\0041\0005\0052\0=\5\31\4=\4 \3=\3\18\2B\0\2\1K\0\1\0\1\0\0\1\0\a\aga\17git_add_file\agu\21git_unstage_file\agp\rgit_push\agc\15git_commit\agg\24git_commit_and_push\agr\20git_revert_file\6A\16git_add_all\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\abd\18buffer_delete\t<bs>\16navigate_up\1\0\3\18show_unloaded\2\21group_empty_dirs\2\24follow_current_file\2\15filesystem\1\0\0\1\0\t\6f\21filter_on_submit\6h\16navigate_up\6D\27fuzzy_finder_directory\6l\rset_root\n<c-x>\17clear_filter\a]g\22next_git_modified\a[g\22prev_git_modified\6/\17fuzzy_finder\6H\18toggle_hidden\19filtered_items\1\0\4\27use_libuv_file_watcher\1\26hijack_netrw_behavior\rdisabled\21group_empty_dirs\1\24follow_current_file\1\26never_show_by_pattern\15never_show\16always_show\20hide_by_pattern\17hide_by_name\1\0\4\fvisible\1\16hide_hidden\2\20hide_gitignored\1\18hide_dotfiles\1\18nesting_rules\vwindow\rmappings\6a\1\0\1\14show_path\tnone\1\2\0\0\badd\6P\vconfig\1\0\1\14use_float\2\1\2\0\0\19toggle_preview\1\0\22\6R\frefresh\6?\14show_help\f<space>\5\6<\16prev_source\6>\16next_source\n<esc>\19revert_preview\6C\15close_node\6y\22copy_to_clipboard\6x\21cut_to_clipboard\6A\18add_directory\6c\tcopy\6p\25paste_from_clipboard\6m\tmove\6t\16open_tabnew\6S\15open_split\t<cr>\topen\6r\vrename\6s\16open_vsplit\6d\vdelete\6w\topen\6z\20close_all_nodes\6q\17close_window\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\nadded\5\fdeleted\b‚úñ\rconflict\bÓúß\vstaged\bÔÅÜ\rmodified\5\runstaged\bÔò∞\fignored\bÔë¥\14untracked\bÔÑ®\frenamed\bÔïî\tname\1\0\3\26use_git_status_colors\2\19trailing_slash\1\14highlight\20NeoTreeFileName\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\5\16folder_open\bÓóæ\17folder_empty\bÔ∞ä\14highlight\20NeoTreeFileIcon\fdefault\6*\18folder_closed\bÓóø\vindent\1\0\t\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\bÔëº\23expander_collapsed\bÔë†\23last_indent_marker\b‚îî\18indent_marker\b‚îÇ\17with_markers\2\fpadding\3\1\16indent_size\3\2\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\26sort_case_insensitive\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\25close_if_last_window\1\nsetup\rneo-tree\frequire\0", "config", "neo-tree.nvim")
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
