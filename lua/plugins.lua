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
  use { 'rafamadriz/neon',
    config = function()
      vim.g.neon_style = 'doom' -- one of 'doom', 'default', 'dark' and 'light'
      vim.g.neon_italic_comment = true -- Italic text for comments
      vim.g.neon_italic_keyword = false -- Applies to conditionals and keywords like for, do, while, loops etc.
      vim.g.neon_italic_boolean = false -- true and false
      vim.g.neon_italic_function = false -- Applies to function (calls and definitions), method (calls and definitions) and built-in functions.
      vim.g.neon_italic_variable = false -- Applies to variable names that are defined by the languages, like this or self. And any variable name that does not have another highlight group.
      vim.g.neon_bold = true -- Applies to error and warning messages, functions (calls and definitions), lsp virtual text, etc.
    end
  }
  use { 'marko-cerovac/material.nvim',
    config = function()
      vim.g.material_style = 'oceanic' -- The theme comes in five styles, 'darker', 'lighter', 'palenight', 'oceanic' and 'deep ocean'
      vim.g.material_contrast = true -- Make sidebars and popup menus like nvim-tree and telescope have a different background
      vim.g.material_lighter_contrast = false -- Increase the contrast for the 'lighter' variant of the theme
      vim.g.material_italic_comments = false -- Make comments italic
      vim.g.material_italic_keywords = false -- Make keywords like if, for, while etc. italic
      vim.g.material_italic_functions = false -- Make function calls and names italic
      vim.g.material_italic_variables = false -- Make variable names and identifiers italic
      vim.g.material_borders = false -- Enable the border between verticaly split windows visable
      vim.g.material_disable_background = false -- Disable the setting of background color so that NeoVim can use your terminal background
      vim.g.material_hide_eob = false -- Hide the end of buffer lines ( ~ )
      vim.g.material_variable_color = '#717CB4' -- Set a custom color for variables and fields
      --vim.g.material_custom_colors = {} -- Override the default colors and use your own
    end
  }
  use { 'bluz71/vim-moonfly-colors',
    config = function()
      vim.g.moonflyCursorColor = 1
      vim.g.moonflyTerminalColors = 1
      vim.g.moonflyUnderlineMatchParen = 1
      vim.g.moonflyItalics = 1
      vim.g.moonflyNormalFloat = 0
    end
  }
  use { 'sainnhe/sonokai' } -- Settings found in `:help sonokai`
  use { 'sainnhe/edge' }
  use { 'sainnhe/everforest' }
  use { 'sainnhe/gruvbox-material' }
  use { 'adisen99/codeschool.nvim', requires = { 'rktjmp/lush.nvim' } } -- Requires other settings to be enabled
  use { 'Th3Whit3Wolf/space-nvim' }
  use { 'ray-x/aurora' }
  use { 'tanvirtin/monokai.nvim' }
  use {
    'maaslalani/nordbuddy',
    config = function()
      vim.g.nord_underline_option = 'none'
      vim.g.nord_italic = true
      vim.g.nord_italic_comments = false
      vim.g.nord_minimal_mode = false
      --require('nordbuddy').colorscheme(
      -- This function takes a table as argument.
      -- If an empty table is passed, these values are implicitly assigned.
      --{
        -- Underline style used for spelling
        -- Options: 'none', 'underline', 'undercurl'
        --underline_option = 'none',

        -- Italics for certain keywords such as constructors, functions,
        -- labels and namespaces
        --italic = true,

        -- Italic styled comments
        --italic_comments = false,

        -- Minimal mode: different choice of colors for Tabs and StatusLine
        --minimal_mode = false
      --})
      end
    }
  use { 'kyazdani42/blue-moon' }
  use { 'mhartington/oceanic-next' }
  use { 'glepnir/zephyr-nvim' }
  use { 'rockerBOO/boo-colorscheme-nvim', branch = 'main' }
  use { 'bkegley/gloombuddy', requires = { 'tjdevries/colorbuddy.vim' } }
  use { 'tomasiser/vim-code-dark' }
  use { 'sts10/vim-pink-moon' }
  use { 'shaunsingh/nord.nvim' }
  use { 'shaunsingh/moonlight.nvim',
    config = function()
      vim.g.moonlight_italic_comments = true
      vim.g.moonlight_italic_keywords = true
      vim.g.moonlight_italic_functions = true
      vim.g.moonlight_italic_variables = false
      vim.g.moonlight_contrast = true
      vim.g.moonlight_borders = false
      vim.g.moonlight_disable_background = false
    end
  }
  use { 'kamwitsta/flatwhite-vim' }
  use { 'rktjmp/lush.nvim' }
  use { 'navarasu/onedark.nvim' }
  use {
    'ishan9299/nvim-solarized-lua',
    config = function()
      vim.g.solarized_italics = 1
      vim.g.solarized_visibility = 'normal' -- low normal high
      vim.g.solarized_diffmode = 'normal' -- low normal high
    end
  }


  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        --ignore_install = { "javascript" }, -- List of parsers to ignore installing
        highlight = {
          enable = true,              -- false will disable the whole extension
          --disable = { "c", "rust" },  -- list of language that will be disabled
          -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
          -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
          -- Using this option may slow down your editor, and you may see some duplicate highlights.
          -- Instead of true it can also be a list of languages
          additional_vim_regex_highlighting = false,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
        indent = { enable = true },
      }
      vim.cmd(
      [[
      set foldmethod=expr
      set foldexpr=nvim_treesitter#foldexpr()
      ]])
    end
  }

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
    requires = { 'stevearc/aerial.nvim', 'kabouzeid/nvim-lspinstall' },
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
          require('plugin-configs/lspconfig/bindings').set_keymaps(bufnr)
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

  use { 'stevearc/aerial.nvim',
    requires = { 'neovim/nvim-lspconfig' },
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
    requires = { 'folke/twilight.nvim' },
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
    requires = { 'nvim-treesitter/nvim-treesitter' },
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
