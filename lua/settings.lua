vim.cmd([[
if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif
]])

vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.autowrite = true
vim.opt.hidden = true
vim.opt.mouse = 'a'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = true
vim.opt.textwidth = 80

vim.opt.termguicolors = true
vim.opt.scrolloff = 5

vim.opt.directory:prepend { '~/.vim/swapfiles' }
vim.opt.runtimepath:prepend { '~/.vim/pack/git-plugins/start/' }

-- Sets linenumbers
vim.opt.number = true
vim.opt.relativenumber = true

--
-- Colors
--

--set background=light
--set background=dark
vim.cmd([[
"Prettifications
"autocmd vimenter * colorscheme NeoSolarized
"autocmd vimenter * colorscheme ayu
autocmd vimenter * colorscheme orange-moon
"autocmd Colorscheme NeoSolarized :hi Keyword gui=italic cterm=italic
]])
