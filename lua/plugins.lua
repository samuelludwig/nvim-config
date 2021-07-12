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
  use { 'arcticicestudio/nord-vim' }
  use { 'kamwitsta/flatwhite-vim' }
  use { 'rktjmp/lush.nvim' }
  use {
      'joshdick/onedark.vim',
      config = function()
          vim.cmd(
          [[
          "Hide ~'s
          let g:onedark_hide_endofbuffer = 1

          "Enable italics
          let g:onedark_terminal_italics = 1
          ]])
      end
  }
  use {
      'overcache/NeoSolarized',
      config = function()
          vim.cmd(
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
          ]])
      end
  }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use { 'b3nj5m1n/kommentary' }

  use {
    'SirVer/ultisnips',
    config = function()
      vim.cmd(
      [[
      " Trigger configuration. You need to change this to something else
      " than <tab> if you use https://github.com/Valloric/YouCompleteMe.
      let g:UltiSnipsExpandTrigger="<tab>"
      let g:UltiSnipsJumpForwardTrigger="<c-s>"
      let g:UltiSnipsJumpBackwardTrigger="<c-a>"
      ]]) -- We dont need any return values
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
end)
