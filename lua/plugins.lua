return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    requires = {'kyazdani42/nvim-web-devicons'},
    disable = true
  }

  use {
    'ayu-theme/ayu-vim',
    config = function()
      vim.cmd(
      [[
      let ayucolor="light"
      "let ayucolor="mirage"
      "let ayucolor="dark"
      ]])
    end
  }
  use { 'sts10/vim-pink-moon' }
  use { 'shaunsingh/nord.nvim' }
  use { 'kamwitsta/flatwhite-vim' }
  use { 'rktjmp/lush.nvim' }
  use { 'navarasu/onedark.nvim' }
  use {
    'overcache/NeoSolarized',
    config = function()
      -- Default value is "normal", Setting this option to "high" or "low" does
      -- use the same Solarized palette but simply shifts some values up or
      -- down in order to expand or compress the tonal range displayed.
      vim.g.neosolarized_contrast = "normal"

      -- Special characters such as trailing whitespace, tabs, newlines, when
      -- displayed using ":set list" can be set to one of three levels
      -- depending on your needs.  Default value is "normal". Provide "high"
      -- and "low" options.
      vim.g.neosolarized_visibility = "normal"

      -- I make vertSplitBar a transparent background color. If you like the
      -- origin solarized vertSplitBar style more, set this value to 0.
      vim.g.neosolarized_vertSplitBgTrans = 1

      -- If you wish to enable/disable NeoSolarized from displaying bold,
      -- underlined or italicized" typefaces, simply assign 1 or 0 to the
      -- appropriate variable.  Default values:
      vim.g.neosolarized_bold = 1
      vim.g.neosolarized_underline = 1
      vim.g.neosolarized_italic = 0

      -- Used to enable/disable "bold as bright" in Neovim terminal. If colors
      -- of bold text output by commands like `ls` aren't what you expect, you
      -- might want to try disabling this option. Default value:
      vim.g.neosolarized_termBoldAsBright = 1
    end
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'b3nj5m1n/kommentary' }

  use {
    'SirVer/ultisnips',
    config = function()
      -- Trigger configuration. You need to change this to something else
      -- than <tab> if you use https://github.com/Valloric/YouCompleteMe.
      vim.g.UltiSnipsExpandTrigger="<tab>"
      vim.g.UltiSnipsJumpForwardTrigger="<c-s>"
      vim.g.UltiSnipsJumpBackwardTrigger="<c-a>"
    end
  }
  use { 'honza/vim-snippets' }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      local bind_telescope_cmd = function(bind, command)
        local cmd_string
          = [[<cmd>lua require('telescope.builtin').]] .. command .. [[()<cr>]]
        return vim.api.nvim_set_keymap('n', bind, cmd_string, { noremap = true })
      end
      bind_telescope_cmd('<leader>ff', 'find_files')
      bind_telescope_cmd('<leader>fg', 'live_grep')
      bind_telescope_cmd('<leader>fb', 'buffers')
      bind_telescope_cmd('<leader>fh', 'help_tags')
    end
  }

  use {
    'vimwiki/vimwiki',
    config = function()
      vim.cmd(
      [[
      "Autopopulate the header of every new vimwiki file
      let g:vimwiki_auto_header=1

      "Convenient splits
      nmap <Leader>we <Plug>VimwikiSplitLink
      nmap <Leader>wq <Plug>VimwikiVSplitLink

      "Easy access to my buffer file
      nmap <Leader>c :split ~/vimwiki/Buffer.wiki<Enter>
      ]]) -- We dont need any return values
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

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('configs/plugins/nvim-tree') end
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        plugins = {
          marks = true, -- shows a list of your marks on ' and `
          registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
          -- the presets plugin, adds help for a bunch of default keybindings in Neovim
          -- No actual key bindings are created
          spelling = {
            enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
            suggestions = 20, -- how many suggestions should be shown in the list?
          },
          presets = {
            operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
            g = true, -- bindings for prefixed with g
          },
        },
        -- add operators that will trigger motion and text object completion
        -- to enable all native operators, set the preset / operators plugin above
        operators = { gc = "Comments" },
        key_labels = {
          -- override the label used to display some keys. It doesn't effect WK in any other way.
          -- For example:
          -- ["<space>"] = "SPC",
          -- ["<cr>"] = "RET",
          -- ["<tab>"] = "TAB",
        },
        icons = {
          breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
          separator = "➜", -- symbol used between a key and it's label
          group = "+", -- symbol prepended to a group
        },
        window = {
          border = "none", -- none, single, double, shadow
          position = "bottom", -- bottom, top
          margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
          padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
        },
        layout = {
          height = { min = 4, max = 25 }, -- min and max height of the columns
          width = { min = 20, max = 50 }, -- min and max width of the columns
          spacing = 3, -- spacing between columns
          align = "left", -- align columns left, center or right
        },
        ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
        show_help = true, -- show help message on the command line when the popup is visible
        triggers = "auto", -- automatically setup triggers
        -- triggers = {"<leader>"} -- or specify a list manually
        triggers_blacklist = {
          -- list of mode / prefixes that should never be hooked by WhichKey
          -- this is mostly relevant for key maps that start with a native binding
          -- most people should not need to change this
          i = { "j", "k" },
          v = { "j", "k" },
        },
      }
    end
  }

  use {
    'stevearc/aerial.nvim',
    config = function()
      vim.g.aerial = {
      -- Enum: persist, close, auto, global
      --   persist - aerial window will stay open until closed
      --   close   - aerial window will close when original file is no longer visible
      --   auto    - aerial window will stay open as long as there is a visible
      --             buffer to attach to
      --   global  - same as 'persist', and will always show symbols for the current buffer
      close_behavior = "auto",

      -- Set to false to remove the default keybindings for the aerial buffer
      default_bindings = true,

      -- Enum: prefer_right, prefer_left, right, left
      -- Determines the default direction to open the aerial window. The 'prefer'
      -- options will open the window in the other direction *if* there is a
      -- different buffer in the way of the preferred direction
      default_direction = "prefer_right",

      -- Set to true to only open aerial at the far right/left of the editor
      -- Default behavior opens aerial relative to current window
      placement_editor_edge = false,

      -- Fetch document symbols when LSP diagnostics change.
      -- If you set this to false, you will need to manually fetch symbols
      diagnostics_trigger_update = true,

      -- Enum: split_width, full_width, last, none
      -- Determines line highlighting mode when multiple buffers are visible
      highlight_mode = "split_width",

      -- When jumping to a symbol, highlight the line for this many ms
      -- Set to 0 or false to disable
      highlight_on_jump = 300,

      -- Fold code when folding the tree. Only works when manage_folds is enabled
      link_tree_to_folds = true,

      -- Fold the tree when folding code. Only works when manage_folds is enabled
      link_folds_to_tree = false,

      -- Use symbol tree for folding. Set to true or false to enable/disable
      -- 'auto' will manage folds if your previous foldmethod was 'manual'
      manage_folds = "auto",

      -- The maximum width of the aerial window
      max_width = 40,

      -- The minimum width of the aerial window.
      -- To disable dynamic resizing, set this to be equal to max_width
      min_width = 10,

      -- Set default symbol icons to use Nerd Font icons (see https://www.nerdfonts.com/)
      nerd_font = "auto",

      -- Whether to open aerial automatically when entering a buffer.
      -- Can also be specified per-filetype as a map (see below)
      open_automatic = false,

      -- If open_automatic is true, only open aerial if the source buffer is at
      -- least this long
      open_automatic_min_lines = 0,

      -- If open_automatic is true, only open aerial if there are at least this many symbols
      open_automatic_min_symbols = 0,

      -- Run this command after jumping to a symbol (false will disable)
      post_jump_cmd = "normal! zz",

      -- Set to false to not update the symbols when there are LSP errors
      update_when_errors = true,

      -- A list of all symbols to display. Set to false to display all symbols.
      filter_kind = {
        "Class",
        "Constructor",
        "Enum",
        "Function",
        "Interface",
        "Method",
        "Struct",
      },
    }

    -- open_automatic can be specified as a filetype map. For example, the below
    -- configuration will open automatically in all filetypes except python and rust
    vim.g.aerial = {
      open_automatic = {
        -- use underscore to specify the default behavior
        ['_']  = true,
        python = false,
        rust   = false,
      }
    }

    -- You can also override the default icons.
    vim.g.aerial = {
      icons = {
        Class          = '',
        -- The icon to use when a class has been collapsed in the tree
        ClassCollapsed = '喇',
        Function       = '',
        Constant       = '[c]',
        -- The default icon to use when any symbol is collapsed in the tree
        Collapsed      = '▶',
      }
    }
    end
  }

  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        window = {
          backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
          -- height and width can be:
          -- * an absolute number of cells when > 1
          -- * a percentage of the width / height of the editor when <= 1
          width = 120, -- width of the Zen window
          height = 1, -- height of the Zen window
          -- by default, no options are changed for the Zen window
          -- uncomment any of the options below, or add other vim.wo options you want to apply
          options = {
            -- signcolumn = "no", -- disable signcolumn
            -- number = false, -- disable number column
            -- relativenumber = false, -- disable relative numbers
            -- cursorline = false, -- disable cursorline
            -- cursorcolumn = false, -- disable cursor column
            -- foldcolumn = "0", -- disable fold column
            -- list = false, -- disable whitespace characters
          },
        },
        plugins = {
          -- disable some global vim options (vim.o...)
          -- comment the lines to not apply the options
          options = {
            enabled = true,
            ruler = false, -- disables the ruler text in the cmd line area
            showcmd = false, -- disables the command in the last line of the screen
          },
          twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
          gitsigns = { enabled = false }, -- disables git signs
          tmux = { enabled = false }, -- disables the tmux statusline
          -- this will change the font size on kitty when in zen mode
          -- to make this work, you need to set the following kitty options:
          -- - allow_remote_control socket-only
          -- - listen_on unix:/tmp/kitty
          kitty = {
            enabled = false,
            font = "+4", -- font size increment
          },
        },
        -- callback where you can add custom code when the Zen window opens
        on_open = function(win)
        end,
        -- callback where you can add custom code when the Zen window closes
        on_close = function()
        end,
      }
    end
  }

  use {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup {
        dimming = {
          alpha = 0.25, -- amount of dimming
          -- we try to get the foreground from the highlight groups or fallback color
          color = { "Normal", "#ffffff" },
        },
        context = 10, -- amount of lines we will try to show around the current line
        -- treesitter is used to automatically expand the visible text,
        -- but you can further control the types of nodes that should always be fully expanded
        expand = { -- for treesitter, we we always try to expand to the top-most ancestor with these types
          "function",
          "method",
          "table",
          "if_statement",
        },
        exclude = {}, -- exclude these filetypes
      }
    end
  }
end)
