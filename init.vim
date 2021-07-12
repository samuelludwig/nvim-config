runtime! debian.vim

nnoremap <Space> <Nop>
let mapleader = " "

lua require('packer-bootstrap')
lua require('plugins')
"source ~/.config/nvim/plugins.vim
source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/automations.vim

command! Scratch lua require'lib.core.tools'.makeScratch()
