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
local package_path_str = "/home/dotdotok/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/dotdotok/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/dotdotok/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/dotdotok/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/dotdotok/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
    config = { "\27LJ\1\2Í\v\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0›\v          \" Default value is \"normal\", Setting this option to \"high\" or \"low\" does\n          \" use the same Solarized palette but simply shifts some values up or\n          \" down in order to expand or compress the tonal range displayed.\n          let g:neosolarized_contrast = \"normal\"\n\n          \" Special characters such as trailing whitespace, tabs, newlines, when\n          \" displayed using \":set list\" can be set to one of three levels\n          \" depending on your needs.  Default value is \"normal\". Provide \"high\"\n          \" and \"low\" options.\n          let g:neosolarized_visibility = \"normal\"\n\n          \" I make vertSplitBar a transparent background color. If you like the\n          \" origin solarized vertSplitBar style more, set this value to 0.\n          let g:neosolarized_vertSplitBgTrans = 1\n\n          \" If you wish to enable/disable NeoSolarized from displaying bold,\n          \" underlined or italicized\" typefaces, simply assign 1 or 0 to the\n          \" appropriate variable.  Default values:\n          let g:neosolarized_bold = 1\n          let g:neosolarized_underline = 1\n          let g:neosolarized_italic = 0\n\n          \" Used to enable/disable \"bold as bright\" in Neovim terminal. If colors\n          \" of bold text output by commands like `ls` aren't what you expect, you\n          \" might want to try disabling this option. Default value:\n          let g:neosolarized_termBoldAsBright = 1\n          \14nvim_exec\bapi\bvim\0" },
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/NeoSolarized"
  },
  ["ayu-vim"] = {
    config = { '\27LJ\1\2Ÿ\1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0n          let ayucolor="light"\n          "let ayucolor="mirage"\n          "let ayucolor="dark"\n          \14nvim_exec\bapi\bvim\0' },
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["flatwhite-vim"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/flatwhite-vim"
  },
  kommentary = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2¢\1\0\0\b\0\6\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0\16\2\0\0>\1\2\4D\4\a€4\6\0\0%\a\5\0>\6\2\0026\6\5\0067\6\2\0062\a\0\0>\6\2\1B\4\3\3N\4÷G\0\1\0\14lspconfig\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\2\1\3\0\a+\0\0\0>\0\1\0014\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvimÔ\n\1\2\n\0(\0o1\2\0\0001\3\1\0\16\4\3\0%\5\2\0%\6\3\0>\4\3\0013\4\4\0\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\28\0%\b\29\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\30\0%\b\31\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a \0%\b!\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\"\0%\b#\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a$\0%\b%\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a&\0%\b'\0\16\t\4\0>\5\5\0010\0\0€G\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0Ì\1\1\0\v\0\f\0\0261\0\0\0\16\1\0\0>\1\1\0014\1\1\0%\2\2\0>\1\2\0021\2\4\0:\2\3\0014\1\1\0%\2\5\0>\1\2\0021\2\6\0003\3\a\0004\4\b\0\16\5\3\0>\4\2\4T\a\5€6\t\b\0017\t\t\t3\n\n\0:\2\v\n>\t\2\1A\a\3\3N\aù0\0\0€G\0\1\0\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\17intelephense\0\14lspconfig\0\22post_install_hook\15lspinstall\frequire\0\0" },
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\0029\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\30configs/plugins/nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["onedark.vim"] = {
    config = { "\27LJ\1\2Ê\1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0˜\1          \"Hide ~'s\n          let g:onedark_hide_endofbuffer = 1\n\n          \"Enable italics\n          let g:onedark_terminal_italics = 1\n          \14nvim_exec\bapi\bvim\0" },
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    config = { '\27LJ\1\2Û\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0©\2      " Trigger configuration. You need to change this to something else\n      " than <tab> if you use https://github.com/Valloric/YouCompleteMe.\n      let g:UltiSnipsExpandTrigger="<tab>"\n      let g:UltiSnipsJumpForwardTrigger="<c-s>"\n      let g:UltiSnipsJumpBackwardTrigger="<c-a>"\n      \14nvim_exec\bapi\bvim\0' },
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-pink-moon"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/vim-pink-moon"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  vimwiki = {
    config = { '\27LJ\1\2ì\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0º\2      "Autopopulate the header of every new vimwiki file\n      let g:vimwiki_auto_header=1\n\n      "Convenient splits\n      nmap <Leader>we <Plug>VimwikiSplitLink\n      nmap <Leader>wq <Plug>VimwikiVSplitLink\n\n      "Easy access to my buffer file\n      nmap <Leader>c :split ~/vimwiki/Buffer.wiki<Enter>\n      \14nvim_exec\bapi\bvim\0' },
    loaded = true,
    path = "/home/dotdotok/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: onedark.vim
time([[Config for onedark.vim]], true)
try_loadstring("\27LJ\1\2Ê\1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0˜\1          \"Hide ~'s\n          let g:onedark_hide_endofbuffer = 1\n\n          \"Enable italics\n          let g:onedark_terminal_italics = 1\n          \14nvim_exec\bapi\bvim\0", "config", "onedark.vim")
time([[Config for onedark.vim]], false)
-- Config for: NeoSolarized
time([[Config for NeoSolarized]], true)
try_loadstring("\27LJ\1\2Í\v\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0›\v          \" Default value is \"normal\", Setting this option to \"high\" or \"low\" does\n          \" use the same Solarized palette but simply shifts some values up or\n          \" down in order to expand or compress the tonal range displayed.\n          let g:neosolarized_contrast = \"normal\"\n\n          \" Special characters such as trailing whitespace, tabs, newlines, when\n          \" displayed using \":set list\" can be set to one of three levels\n          \" depending on your needs.  Default value is \"normal\". Provide \"high\"\n          \" and \"low\" options.\n          let g:neosolarized_visibility = \"normal\"\n\n          \" I make vertSplitBar a transparent background color. If you like the\n          \" origin solarized vertSplitBar style more, set this value to 0.\n          let g:neosolarized_vertSplitBgTrans = 1\n\n          \" If you wish to enable/disable NeoSolarized from displaying bold,\n          \" underlined or italicized\" typefaces, simply assign 1 or 0 to the\n          \" appropriate variable.  Default values:\n          let g:neosolarized_bold = 1\n          let g:neosolarized_underline = 1\n          let g:neosolarized_italic = 0\n\n          \" Used to enable/disable \"bold as bright\" in Neovim terminal. If colors\n          \" of bold text output by commands like `ls` aren't what you expect, you\n          \" might want to try disabling this option. Default value:\n          let g:neosolarized_termBoldAsBright = 1\n          \14nvim_exec\bapi\bvim\0", "config", "NeoSolarized")
time([[Config for NeoSolarized]], false)
-- Config for: ayu-vim
time([[Config for ayu-vim]], true)
try_loadstring('\27LJ\1\2Ÿ\1\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0n          let ayucolor="light"\n          "let ayucolor="mirage"\n          "let ayucolor="dark"\n          \14nvim_exec\bapi\bvim\0', "config", "ayu-vim")
time([[Config for ayu-vim]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring('\27LJ\1\2ì\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0º\2      "Autopopulate the header of every new vimwiki file\n      let g:vimwiki_auto_header=1\n\n      "Convenient splits\n      nmap <Leader>we <Plug>VimwikiSplitLink\n      nmap <Leader>wq <Plug>VimwikiVSplitLink\n\n      "Easy access to my buffer file\n      nmap <Leader>c :split ~/vimwiki/Buffer.wiki<Enter>\n      \14nvim_exec\bapi\bvim\0', "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2¢\1\0\0\b\0\6\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0\16\2\0\0>\1\2\4D\4\a€4\6\0\0%\a\5\0>\6\2\0026\6\5\0067\6\2\0062\a\0\0>\6\2\1B\4\3\3N\4÷G\0\1\0\14lspconfig\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\2\1\3\0\a+\0\0\0>\0\1\0014\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\3\1\3\0\a4\0\0\0007\0\1\0007\0\2\0+\1\0\0C\2\0\0=\0\1\1G\0\1\0\1À\24nvim_buf_set_option\bapi\bvimÔ\n\1\2\n\0(\0o1\2\0\0001\3\1\0\16\4\3\0%\5\2\0%\6\3\0>\4\3\0013\4\4\0\16\5\2\0%\6\5\0%\a\6\0%\b\a\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\b\0%\b\t\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\n\0%\b\v\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\f\0%\b\r\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\14\0%\b\15\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\16\0%\b\17\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\18\0%\b\19\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\20\0%\b\21\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\22\0%\b\23\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\24\0%\b\25\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\26\0%\b\27\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\28\0%\b\29\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\30\0%\b\31\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a \0%\b!\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a\"\0%\b#\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a$\0%\b%\0\16\t\4\0>\5\5\1\16\5\2\0%\6\5\0%\a&\0%\b'\0\16\t\4\0>\5\5\0010\0\0€G\0\1\0*<cmd>lua vim.lsp.buf.formatting()<CR>\r<space>f2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\r<space>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\r<space>e*<cmd>lua vim.lsp.buf.references()<CR>\agr+<cmd>lua vim.lsp.buf.code_action()<CR>\14<space>ca&<cmd>lua vim.lsp.buf.rename()<CR>\14<space>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\r<space>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\14<space>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\14<space>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\14<space>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K*<Cmd>lua vim.lsp.buf.definition()<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\1\0\2\vsilent\2\fnoremap\2\27v:lua.vim.lsp.omnifunc\romnifunc\0\0Ì\1\1\0\v\0\f\0\0261\0\0\0\16\1\0\0>\1\1\0014\1\1\0%\2\2\0>\1\2\0021\2\4\0:\2\3\0014\1\1\0%\2\5\0>\1\2\0021\2\6\0003\3\a\0004\4\b\0\16\5\3\0>\4\2\4T\a\5€6\t\b\0017\t\t\t3\n\n\0:\2\v\n>\t\2\1A\a\3\3N\aù0\0\0€G\0\1\0\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\17intelephense\0\14lspconfig\0\22post_install_hook\15lspinstall\frequire\0\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring('\27LJ\1\2Û\2\0\0\3\0\4\0\a4\0\0\0007\0\1\0007\0\2\0%\1\3\0)\2\1\0>\0\3\1G\0\1\0©\2      " Trigger configuration. You need to change this to something else\n      " than <tab> if you use https://github.com/Valloric/YouCompleteMe.\n      let g:UltiSnipsExpandTrigger="<tab>"\n      let g:UltiSnipsJumpForwardTrigger="<c-s>"\n      let g:UltiSnipsJumpBackwardTrigger="<c-a>"\n      \14nvim_exec\bapi\bvim\0', "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\30configs/plugins/nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
