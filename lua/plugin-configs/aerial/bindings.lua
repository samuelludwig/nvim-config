local bindings = {}

bindings.set_keymaps = function(bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Aerial does not set any mappings by default, so you'll want to set some up
  -- Toggle the aerial window with <leader>a
  buf_set_keymap('n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
  -- Jump forwards/backwards with '{' and '}'
  buf_set_keymap('n', '{', '<cmd>AerialPrev<CR>', {})
  buf_set_keymap('n', '}', '<cmd>AerialNext<CR>', {})
  -- Jump up the tree with '[[' or ']]'
  buf_set_keymap('n', '[[', '<cmd>AerialPrevUp<CR>', {})
  buf_set_keymap('n', ']]', '<cmd>AerialNextUp<CR>', {})

  -- Source LSP bindings
  require('plugin-configs/lspconfigs/bindings').set_keymaps(bufnr)
end

return bindings
