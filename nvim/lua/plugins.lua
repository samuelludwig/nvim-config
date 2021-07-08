return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    requires = { 'kyazdani42/nvim-web-devicons' },
    disable = true
  }

  use { 'Olical/aniseed', tag = 'v3.19.0' }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
    vim.api.nvim_exec(
    [[
    let g:nvim_tree_side = 'right' "left by default
    let g:nvim_tree_width = 40 "30 by default, can be width_in_columns or 'width_in_percent%'
    let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
    let g:nvim_tree_gitignore = 1 "0 by default
    let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
    let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
    let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ] "empty by default, don't auto open tree on specific filetypes.
    let g:nvim_tree_quit_on_open = 1 "0 by default, closes the tree when you open a file
    let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
    let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
    let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
    let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
    let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
    let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
    let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
    let g:nvim_tree_auto_resize = 0 "1 by default, will resize the tree to its saved width when opening a file
    let g:nvim_tree_disable_netrw = 0 "1 by default, disables netrw
    let g:nvim_tree_hijack_netrw = 0 "1 by default, prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
    let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
    let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
    let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
    let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
    let g:nvim_tree_hijack_cursor = 0 "1 by default, when moving cursor in the tree, will position the cursor at the start of the file on the current line
    let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
    let g:nvim_tree_update_cwd = 1 "0 by default, will update the tree cwd when changing nvim's directory (DirChanged event). Behaves strangely with autochdir set.
    let g:nvim_tree_window_picker_exclude = { 'filetype': [ 'packer', 'qf' ], 'buftype': [ 'terminal' ] }
    " Dictionary of buffer option names mapped to a list of option values that
    " indicates to the window picker that the buffer's window should not be
    " selectable.
    let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
    let g:nvim_tree_show_icons = { 'git': 1, 'folders': 0, 'files': 0, 'folder_arrows': 0, }
    "If 0, do not show the icons for one of 'git' 'folder' and 'files'
    "1 by default, notice that if 'files' is 1, it will only display
    "if nvim-web-devicons is installed and on your runtimepath.
    "if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
    "but this will not work when you set indent_markers (because of UI conflict)

    " default will show icon by default if no icon is provided
    " default shows no icon by default
    let g:nvim_tree_icons = { 'default': '', 'symlink': '', 'git': { 'unstaged': "✗", 'staged': "✓", 'unmerged': "", 'renamed': "➜", 'untracked': "★", 'deleted': "", 'ignored': "◌" }, 'folder': { 'arrow_open': "", 'arrow_closed': "", 'default': "", 'open': "", 'empty': "", 'empty_open': "", 'symlink': "", 'symlink_open': "", }, 'lsp': { 'hint': "", 'info': "", 'warning': "", 'error': "", } }

    nnoremap <C-n> :NvimTreeToggle<CR>
    nnoremap <leader>r :NvimTreeRefresh<CR>
    nnoremap <leader>n :NvimTreeFindFile<CR>
    " NvimTreeOpen and NvimTreeClose are also available if you need them

    set termguicolors " this variable must be enabled for colors to be applied properly

    " a list of groups can be found at `:help nvim_tree_highlight`
    highlight NvimTreeFolderIcon guibg=blue
    ]], false)
    end
  }

  use {
    'stevearc/aerial.nvim',
    config = function()
      local aerial = require'aerial'

      local custom_attach = function(client)
        aerial.on_attach(client)

        -- Aerial does not set any mappings by default, so you'll want to set some up
        -- Toggle the aerial window with <leader>a
        vim.api.nvim_buf_set_keymap(0, 'n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
        -- Jump forwards/backwards with '{' and '}'
        vim.api.nvim_buf_set_keymap(0, 'n', '{', '<cmd>AerialPrev<CR>', {})
        vim.api.nvim_buf_set_keymap(0, 'n', '}', '<cmd>AerialNext<CR>', {})
        -- Jump up the tree with '[[' or ']]'
        vim.api.nvim_buf_set_keymap(0, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
        vim.api.nvim_buf_set_keymap(0, 'n', ']]', '<cmd>AerialNextUp<CR>', {})

        -- This is a great place to set up all your other LSP mappings
      end

      -- Set up your LSP clients here, using the custom on_attach method
      require'lspconfig'.vimls.setup{
        on_attach = custom_attach,
      }
    end
  }

  use {
      'ayu-theme/ayu-vim',
      config = function()
          vim.api.nvim_exec(
          [[
          let ayucolor="light"
          "let ayucolor="mirage"
          "let ayucolor="dark"
          ]], false)
      end
  }
  use { 'sts10/vim-pink-moon' }
  use { 'arcticicestudio/nord-vim' }
  use { 'kamwitsta/flatwhite-vim' }
  use { 'rktjmp/lush.nvim' }
  use {
      'joshdick/onedark.vim',
      config = function()
          vim.api.nvim_exec(
          [[
          "Hide ~'s
          let g:onedark_hide_endofbuffer = 1

          "Enable italics
          let g:onedark_terminal_italics = 1
          ]], false)
      end
  }
  use {
      'overcache/NeoSolarized',
      config = function()
          vim.api.nvim_exec(
          [[
          " Default value is "normal", Setting this option to "high" or "low" does
          " use the same Solarized palette but simply shifts some values up or
          " down in order to expand or compress the tonal range displayed.
          let g:neosolarized_contrast = "normal"

          " Special characters such as trailing whitespace, tabs, newlines, when
          " displayed using ":set list" can be set to one of three levels
          " depending on your needs.  Default value is "normal". Provide "high"
          " and "low" options.
          let g:neosolarized_visibility = "normal"

          " I make vertSplitBar a transparent background color. If you like the
          " origin solarized vertSplitBar style more, set this value to 0.
          let g:neosolarized_vertSplitBgTrans = 1

          " If you wish to enable/disable NeoSolarized from displaying bold,
          " underlined or italicized" typefaces, simply assign 1 or 0 to the
          " appropriate variable.  Default values:
          let g:neosolarized_bold = 1
          let g:neosolarized_underline = 1
          let g:neosolarized_italic = 0

          " Used to enable/disable "bold as bright" in Neovim terminal. If colors
          " of bold text output by commands like `ls` aren't what you expect, you
          " might want to try disabling this option. Default value:
          let g:neosolarized_termBoldAsBright = 1
          ]], false)
      end
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'b3nj5m1n/kommentary' }

  use {
    'SirVer/ultisnips',
    config = function()
      vim.api.nvim_exec(
      [[
      " Trigger configuration. You need to change this to something else
      " than <tab> if you use https://github.com/Valloric/YouCompleteMe.
      let g:UltiSnipsExpandTrigger="<tab>"
      let g:UltiSnipsJumpForwardTrigger="<c-s>"
      let g:UltiSnipsJumpBackwardTrigger="<c-a>"
      ]], false) -- We dont need any return values
    end
  }
  use { 'honza/vim-snippets' }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'
    }
  }

  use {
    'vimwiki/vimwiki',
    config = function()
      vim.api.nvim_exec(
      [[
      "Autopopulate the header of every new vimwiki file
      let g:vimwiki_auto_header=1

      "Convenient splits
      nmap <Leader>we <Plug>VimwikiSplitLink
      nmap <Leader>wq <Plug>VimwikiVSplitLink

      "Easy access to my buffer file
      nmap <Leader>c :split ~/vimwiki/Buffer.wiki<Enter>
      ]], false) -- We dont need any return values
    end
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {'kabouzeid/nvim-lspinstall'},
    config = function()
        local function setup_servers()
          require'lspinstall'.setup()
          local servers = require'lspinstall'.installed_servers()
          for _, server in pairs(servers) do
            require'lspconfig'[server].setup{}
          end
        end

        setup_servers()

        -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
        require'lspinstall'.post_install_hook = function ()
          setup_servers() -- reload installed servers
          vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
        end

        -- Keybinds
        local nvim_lsp = require('lspconfig')

        -- Use an on_attach function to only map the following keys
        -- after the language server attaches to the current buffer
        local on_attach = function(client, bufnr)
          local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
          local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

          --Enable completion triggered by <c-x><c-o>
          buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

          -- Mappings.
          local opts = { noremap=true, silent=true }

          -- See `:help vim.lsp.*` for documentation on any of the below functions
          buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
          buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
          buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
          buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
          buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
          buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
          buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
          buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
          buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
          buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
          buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
          buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
          buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
          buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
          buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
          buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
          buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
        end

        -- Use a loop to conveniently call 'setup' on multiple servers and
        -- map buffer local keybindings when the language server attaches
        local servers = { "intelephense" }
        for _, lsp in ipairs(servers) do
          nvim_lsp[lsp].setup { on_attach = on_attach }
        end
    end
  }

end)
