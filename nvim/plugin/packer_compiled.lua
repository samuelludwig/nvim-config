-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/dot/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/dot/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/dot/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/dot/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/dot/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  NeoSolarized = {
    config = { "\27LJ\1\2Õ\v\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0õ\v          \" Default value is \"normal\", Setting this option to \"high\" or \"low\" does\n          \" use the same Solarized palette but simply shifts some values up or\n          \" down in order to expand or compress the tonal range displayed.\n          let g:neosolarized_contrast = \"normal\"\n\n          \" Special characters such as trailing whitespace, tabs, newlines, when\n          \" displayed using \":set list\" can be set to one of three levels\n          \" depending on your needs.  Default value is \"normal\". Provide \"high\"\n          \" and \"low\" options.\n          let g:neosolarized_visibility = \"normal\"\n\n          \" I make vertSplitBar a transparent background color. If you like the\n          \" origin solarized vertSplitBar style more, set this value to 0.\n          let g:neosolarized_vertSplitBgTrans = 1\n\n          \" If you wish to enable/disable NeoSolarized from displaying bold,\n          \" underlined or italicized\" typefaces, simply assign 1 or 0 to the\n          \" appropriate variable.  Default values:\n          let g:neosolarized_bold = 1\n          let g:neosolarized_underline = 1\n          let g:neosolarized_italic = 0\n\n          \" Used to enable/disable \"bold as bright\" in Neovim terminal. If colors\n          \" of bold text output by commands like `ls` aren't what you expect, you\n          \" might want to try disabling this option. Default value:\n          let g:neosolarized_termBoldAsBright = 1\n          \14nvim_exec\bapi\bvim\0" },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/NeoSolarized"
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\1\2¯\2\0\1\a\1\15\0002+\1\0\0007\1\0\1\16\2\0\0>\1\2\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\5\0%\5\6\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\a\0%\5\b\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\t\0%\5\n\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\v\0%\5\f\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\r\0%\5\14\0002\6\0\0>\1\6\1G\0\1\0\0¿\26<cmd>AerialNextUp<CR>\a]]\26<cmd>AerialPrevUp<CR>\a[[\24<cmd>AerialNext<CR>\6}\24<cmd>AerialPrev<CR>\6{\27<cmd>AerialToggle!<CR>\14<leader>a\6n\24nvim_buf_set_keymap\bapi\bvim\14on_attachr\1\0\4\0\b\0\0144\0\0\0%\1\1\0>\0\2\0021\1\2\0004\2\0\0%\3\3\0>\2\2\0027\2\4\0027\2\5\0023\3\6\0:\1\a\3>\2\2\0010\0\0ÄG\0\1\0\14on_attach\1\0\0\nsetup\nvimls\14lspconfig\0\vaerial\frequire\0" },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/aerial.nvim"
  },
  aniseed = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/aniseed"
  },
  ["ayu-vim"] = {
    config = { '\27LJ\1\2ü\1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0n          let ayucolor="light"\n          "let ayucolor="mirage"\n          "let ayucolor="dark"\n          \14nvim_exec\bapi\bvim\0' },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["flatwhite-vim"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/flatwhite-vim"
  },
  kommentary = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2¢\1\0\0\b\0\6\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0\16\2\0\0>\1\2\4D\4\aÄ4\6\0\0%\a\5\0>\6\2\0026\6\5\0067\6\2\0062\a\0\0>\6\2\1B\4\3\3N\4˜G\0\1\0\14lspconfig\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\2\1\3\0\a+\0\0\0>\0\1\0014\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\0¿\fbufdo e\bcmd\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim‘\n\1\2\n\0(\0o1\2\0\0001\3\1\0\16\4\3\0%\5\2\0%\6\3\0>\4\3\0013\4\4\0\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\28\0%\b\29\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\30\0%\b\31\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a \0%\b!\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\"\0%\b#\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a$\0%\b%\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a&\0%\b'\0\16\t\4\0>\5\5\0010\0\0ÄG\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0Ã\1\1\0\v\0\f\0\0261\0\0\0\16\1\0\0>\1\1\0014\1\1\0%\2\2\0>\1\2\0021\2\4\0:\2\3\0014\1\1\0%\2\5\0>\1\2\0021\2\6\0003\3\a\0004\4\b\0\16\5\3\0>\4\2\4T\a\5Ä6\t\b\0017\t\t\t3\n\n\0:\2\v\n>\t\2\1A\a\3\3N\a˘0\0\0ÄG\0\1\0\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\17intelephense\0\14lspconfig\0\22post_install_hook\15lspinstall\frequire\0\0" },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2™%\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0¯$    let g:nvim_tree_side = 'right' \"left by default\n    let g:nvim_tree_width = 40 \"30 by default, can be width_in_columns or 'width_in_percent%'\n    let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] \"empty by default\n    let g:nvim_tree_gitignore = 1 \"0 by default\n    let g:nvim_tree_auto_open = 1 \"0 by default, opens the tree when typing `vim $DIR` or `vim`\n    let g:nvim_tree_auto_close = 1 \"0 by default, closes the tree when it's the last window\n    let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] \"empty by default, don't auto open tree on specific filetypes.\n    let g:nvim_tree_quit_on_open = 1 \"0 by default, closes the tree when you open a file\n    let g:nvim_tree_follow = 1 \"0 by default, this option allows the cursor to be updated when entering a buffer\n    let g:nvim_tree_indent_markers = 1 \"0 by default, this option shows indent markers when folders are open\n    let g:nvim_tree_hide_dotfiles = 1 \"0 by default, this option hides files and folders starting with a dot `.`\n    let g:nvim_tree_git_hl = 1 \"0 by default, will enable file highlight for git attributes (can be used without the icons).\n    let g:nvim_tree_highlight_opened_files = 1 \"0 by default, will enable folder and file icon highlight for opened files/directories.\n    let g:nvim_tree_root_folder_modifier = ':~' \"This is the default. See :help filename-modifiers for more options\n    let g:nvim_tree_tab_open = 1 \"0 by default, will open the tree when entering a new tab and the tree was previously open\n    let g:nvim_tree_auto_resize = 0 \"1 by default, will resize the tree to its saved width when opening a file\n    let g:nvim_tree_disable_netrw = 0 \"1 by default, disables netrw\n    let g:nvim_tree_hijack_netrw = 0 \"1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)\n    let g:nvim_tree_add_trailing = 1 \"0 by default, append a trailing slash to folder names\n    let g:nvim_tree_group_empty = 1 \" 0 by default, compact folders that only contain a single folder into one node in the file tree\n    let g:nvim_tree_lsp_diagnostics = 1 \"0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics\n    let g:nvim_tree_disable_window_picker = 1 \"0 by default, will disable the window picker.\n    let g:nvim_tree_hijack_cursor = 0 \"1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line\n    let g:nvim_tree_icon_padding = ' ' \"one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.\n    let g:nvim_tree_update_cwd = 1 \"0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.\n    let g:nvim_tree_window_picker_exclude = { 'filetype': [ 'packer', 'qf' ], 'buftype': [ 'terminal' ] }\n    \" Dictionary of buffer option names mapped to a list of option values that\n    \" indicates to the window picker that the buffer's window should not be\n    \" selectable.\n    let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } \" List of filenames that gets highlighted with NvimTreeSpecialFile\n    let g:nvim_tree_show_icons = { 'git': 1, 'folders': 0, 'files': 0, 'folder_arrows': 0, }\n    \"If 0, do not show the icons for one of 'git' 'folder' and 'files'\n    \"1 by default, notice that if 'files' is 1, it will only display\n    \"if nvim-web-devicons is installed and on your runtimepath.\n    \"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.\n    \"but this will not work when you set indent_markers (because of UI conflict)\n\n    \" default will show icon by default if no icon is provided\n    \" default shows no icon by default\n    let g:nvim_tree_icons = { 'default': 'Óòí', 'symlink': 'ÔíÅ', 'git': { 'unstaged': \"‚úó\", 'staged': \"‚úì\", 'unmerged': \"Óúß\", 'renamed': \"‚ûú\", 'untracked': \"‚òÖ\", 'deleted': \"Ôëò\", 'ignored': \"‚óå\" }, 'folder': { 'arrow_open': \"Ôëº\", 'arrow_closed': \"Ôë†\", 'default': \"Óóø\", 'open': \"Óóæ\", 'empty': \"ÔÑî\", 'empty_open': \"ÔÑï\", 'symlink': \"ÔíÇ\", 'symlink_open': \"Óóæ\", }, 'lsp': { 'hint': \"ÔÅ™\", 'info': \"ÔÅö\", 'warning': \"ÔÅ±\", 'error': \"ÔÅó\", } }\n\n    nnoremap <C-n> :NvimTreeToggle<CR>\n    nnoremap <leader>r :NvimTreeRefresh<CR>\n    nnoremap <leader>n :NvimTreeFindFile<CR>\n    \" NvimTreeOpen and NvimTreeClose are also available if you need them\n\n    set termguicolors \" this variable must be enabled for colors to be applied properly\n\n    \" a list of groups can be found at `:help nvim_tree_highlight`\n    highlight NvimTreeFolderIcon guibg=blue\n    \14nvim_exec\bapi\bvim\0" },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["onedark.vim"] = {
    config = { "\27LJ\1\2 \1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0ò\1          \"Hide ~'s\n          let g:onedark_hide_endofbuffer = 1\n\n          \"Enable italics\n          let g:onedark_terminal_italics = 1\n          \14nvim_exec\bapi\bvim\0" },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    config = { '\27LJ\1\2€\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0©\2      " Trigger configuration. You need to change this to something else\n      " than <tab> if you use https://github.com/Valloric/YouCompleteMe.\n      let g:UltiSnipsExpandTrigger="<tab>"\n      let g:UltiSnipsJumpForwardTrigger="<c-s>"\n      let g:UltiSnipsJumpBackwardTrigger="<c-a>"\n      \14nvim_exec\bapi\bvim\0' },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-pink-moon"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/vim-pink-moon"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  vimwiki = {
    config = { '\27LJ\1\2Ï\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0∫\2      "Autopopulate the header of every new vimwiki file\n      let g:vimwiki_auto_header=1\n\n      "Convenient splits\n      nmap <Leader>we <Plug>VimwikiSplitLink\n      nmap <Leader>wq <Plug>VimwikiVSplitLink\n\n      "Easy access to my buffer file\n      nmap <Leader>c :split ~/vimwiki/Buffer.wiki<Enter>\n      \14nvim_exec\bapi\bvim\0' },
    loaded = true,
    path = "/home/dot/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: onedark.vim
time([[Config for onedark.vim]], true)
try_loadstring("\27LJ\1\2 \1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0ò\1          \"Hide ~'s\n          let g:onedark_hide_endofbuffer = 1\n\n          \"Enable italics\n          let g:onedark_terminal_italics = 1\n          \14nvim_exec\bapi\bvim\0", "config", "onedark.vim")
time([[Config for onedark.vim]], false)
-- Config for: NeoSolarized
time([[Config for NeoSolarized]], true)
try_loadstring("\27LJ\1\2Õ\v\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0õ\v          \" Default value is \"normal\", Setting this option to \"high\" or \"low\" does\n          \" use the same Solarized palette but simply shifts some values up or\n          \" down in order to expand or compress the tonal range displayed.\n          let g:neosolarized_contrast = \"normal\"\n\n          \" Special characters such as trailing whitespace, tabs, newlines, when\n          \" displayed using \":set list\" can be set to one of three levels\n          \" depending on your needs.  Default value is \"normal\". Provide \"high\"\n          \" and \"low\" options.\n          let g:neosolarized_visibility = \"normal\"\n\n          \" I make vertSplitBar a transparent background color. If you like the\n          \" origin solarized vertSplitBar style more, set this value to 0.\n          let g:neosolarized_vertSplitBgTrans = 1\n\n          \" If you wish to enable/disable NeoSolarized from displaying bold,\n          \" underlined or italicized\" typefaces, simply assign 1 or 0 to the\n          \" appropriate variable.  Default values:\n          let g:neosolarized_bold = 1\n          let g:neosolarized_underline = 1\n          let g:neosolarized_italic = 0\n\n          \" Used to enable/disable \"bold as bright\" in Neovim terminal. If colors\n          \" of bold text output by commands like `ls` aren't what you expect, you\n          \" might want to try disabling this option. Default value:\n          let g:neosolarized_termBoldAsBright = 1\n          \14nvim_exec\bapi\bvim\0", "config", "NeoSolarized")
time([[Config for NeoSolarized]], false)
-- Config for: ayu-vim
time([[Config for ayu-vim]], true)
try_loadstring('\27LJ\1\2ü\1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0n          let ayucolor="light"\n          "let ayucolor="mirage"\n          "let ayucolor="dark"\n          \14nvim_exec\bapi\bvim\0', "config", "ayu-vim")
time([[Config for ayu-vim]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring('\27LJ\1\2Ï\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0∫\2      "Autopopulate the header of every new vimwiki file\n      let g:vimwiki_auto_header=1\n\n      "Convenient splits\n      nmap <Leader>we <Plug>VimwikiSplitLink\n      nmap <Leader>wq <Plug>VimwikiVSplitLink\n\n      "Easy access to my buffer file\n      nmap <Leader>c :split ~/vimwiki/Buffer.wiki<Enter>\n      \14nvim_exec\bapi\bvim\0', "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2™%\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0¯$    let g:nvim_tree_side = 'right' \"left by default\n    let g:nvim_tree_width = 40 \"30 by default, can be width_in_columns or 'width_in_percent%'\n    let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] \"empty by default\n    let g:nvim_tree_gitignore = 1 \"0 by default\n    let g:nvim_tree_auto_open = 1 \"0 by default, opens the tree when typing `vim $DIR` or `vim`\n    let g:nvim_tree_auto_close = 1 \"0 by default, closes the tree when it's the last window\n    let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] \"empty by default, don't auto open tree on specific filetypes.\n    let g:nvim_tree_quit_on_open = 1 \"0 by default, closes the tree when you open a file\n    let g:nvim_tree_follow = 1 \"0 by default, this option allows the cursor to be updated when entering a buffer\n    let g:nvim_tree_indent_markers = 1 \"0 by default, this option shows indent markers when folders are open\n    let g:nvim_tree_hide_dotfiles = 1 \"0 by default, this option hides files and folders starting with a dot `.`\n    let g:nvim_tree_git_hl = 1 \"0 by default, will enable file highlight for git attributes (can be used without the icons).\n    let g:nvim_tree_highlight_opened_files = 1 \"0 by default, will enable folder and file icon highlight for opened files/directories.\n    let g:nvim_tree_root_folder_modifier = ':~' \"This is the default. See :help filename-modifiers for more options\n    let g:nvim_tree_tab_open = 1 \"0 by default, will open the tree when entering a new tab and the tree was previously open\n    let g:nvim_tree_auto_resize = 0 \"1 by default, will resize the tree to its saved width when opening a file\n    let g:nvim_tree_disable_netrw = 0 \"1 by default, disables netrw\n    let g:nvim_tree_hijack_netrw = 0 \"1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)\n    let g:nvim_tree_add_trailing = 1 \"0 by default, append a trailing slash to folder names\n    let g:nvim_tree_group_empty = 1 \" 0 by default, compact folders that only contain a single folder into one node in the file tree\n    let g:nvim_tree_lsp_diagnostics = 1 \"0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics\n    let g:nvim_tree_disable_window_picker = 1 \"0 by default, will disable the window picker.\n    let g:nvim_tree_hijack_cursor = 0 \"1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line\n    let g:nvim_tree_icon_padding = ' ' \"one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.\n    let g:nvim_tree_update_cwd = 1 \"0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.\n    let g:nvim_tree_window_picker_exclude = { 'filetype': [ 'packer', 'qf' ], 'buftype': [ 'terminal' ] }\n    \" Dictionary of buffer option names mapped to a list of option values that\n    \" indicates to the window picker that the buffer's window should not be\n    \" selectable.\n    let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } \" List of filenames that gets highlighted with NvimTreeSpecialFile\n    let g:nvim_tree_show_icons = { 'git': 1, 'folders': 0, 'files': 0, 'folder_arrows': 0, }\n    \"If 0, do not show the icons for one of 'git' 'folder' and 'files'\n    \"1 by default, notice that if 'files' is 1, it will only display\n    \"if nvim-web-devicons is installed and on your runtimepath.\n    \"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.\n    \"but this will not work when you set indent_markers (because of UI conflict)\n\n    \" default will show icon by default if no icon is provided\n    \" default shows no icon by default\n    let g:nvim_tree_icons = { 'default': 'Óòí', 'symlink': 'ÔíÅ', 'git': { 'unstaged': \"‚úó\", 'staged': \"‚úì\", 'unmerged': \"Óúß\", 'renamed': \"‚ûú\", 'untracked': \"‚òÖ\", 'deleted': \"Ôëò\", 'ignored': \"‚óå\" }, 'folder': { 'arrow_open': \"Ôëº\", 'arrow_closed': \"Ôë†\", 'default': \"Óóø\", 'open': \"Óóæ\", 'empty': \"ÔÑî\", 'empty_open': \"ÔÑï\", 'symlink': \"ÔíÇ\", 'symlink_open': \"Óóæ\", }, 'lsp': { 'hint': \"ÔÅ™\", 'info': \"ÔÅö\", 'warning': \"ÔÅ±\", 'error': \"ÔÅó\", } }\n\n    nnoremap <C-n> :NvimTreeToggle<CR>\n    nnoremap <leader>r :NvimTreeRefresh<CR>\n    nnoremap <leader>n :NvimTreeFindFile<CR>\n    \" NvimTreeOpen and NvimTreeClose are also available if you need them\n\n    set termguicolors \" this variable must be enabled for colors to be applied properly\n\n    \" a list of groups can be found at `:help nvim_tree_highlight`\n    highlight NvimTreeFolderIcon guibg=blue\n    \14nvim_exec\bapi\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2¢\1\0\0\b\0\6\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0\16\2\0\0>\1\2\4D\4\aÄ4\6\0\0%\a\5\0>\6\2\0026\6\5\0067\6\2\0062\a\0\0>\6\2\1B\4\3\3N\4˜G\0\1\0\14lspconfig\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\2\1\3\0\a+\0\0\0>\0\1\0014\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\0¿\fbufdo e\bcmd\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1¿\24nvim_buf_set_option\bapi\bvim‘\n\1\2\n\0(\0o1\2\0\0001\3\1\0\16\4\3\0%\5\2\0%\6\3\0>\4\3\0013\4\4\0\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\28\0%\b\29\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\30\0%\b\31\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a \0%\b!\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\"\0%\b#\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a$\0%\b%\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a&\0%\b'\0\16\t\4\0>\5\5\0010\0\0ÄG\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0Ã\1\1\0\v\0\f\0\0261\0\0\0\16\1\0\0>\1\1\0014\1\1\0%\2\2\0>\1\2\0021\2\4\0:\2\3\0014\1\1\0%\2\5\0>\1\2\0021\2\6\0003\3\a\0004\4\b\0\16\5\3\0>\4\2\4T\a\5Ä6\t\b\0017\t\t\t3\n\n\0:\2\v\n>\t\2\1A\a\3\3N\a˘0\0\0ÄG\0\1\0\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\17intelephense\0\14lspconfig\0\22post_install_hook\15lspinstall\frequire\0\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring('\27LJ\1\2€\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0©\2      " Trigger configuration. You need to change this to something else\n      " than <tab> if you use https://github.com/Valloric/YouCompleteMe.\n      let g:UltiSnipsExpandTrigger="<tab>"\n      let g:UltiSnipsJumpForwardTrigger="<c-s>"\n      let g:UltiSnipsJumpBackwardTrigger="<c-a>"\n      \14nvim_exec\bapi\bvim\0', "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\1\2¯\2\0\1\a\1\15\0002+\1\0\0007\1\0\1\16\2\0\0>\1\2\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\5\0%\5\6\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\a\0%\5\b\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\t\0%\5\n\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\v\0%\5\f\0002\6\0\0>\1\6\0014\1\1\0007\1\2\0017\1\3\1'\2\0\0%\3\4\0%\4\r\0%\5\14\0002\6\0\0>\1\6\1G\0\1\0\0¿\26<cmd>AerialNextUp<CR>\a]]\26<cmd>AerialPrevUp<CR>\a[[\24<cmd>AerialNext<CR>\6}\24<cmd>AerialPrev<CR>\6{\27<cmd>AerialToggle!<CR>\14<leader>a\6n\24nvim_buf_set_keymap\bapi\bvim\14on_attachr\1\0\4\0\b\0\0144\0\0\0%\1\1\0>\0\2\0021\1\2\0004\2\0\0%\3\3\0>\2\2\0027\2\4\0027\2\5\0023\3\6\0:\1\a\3>\2\2\0010\0\0ÄG\0\1\0\14on_attach\1\0\0\nsetup\nvimls\14lspconfig\0\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
