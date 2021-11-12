local utils = require('utils')

vim.cmd "filetype plugin on"
vim.cmd "syntax on"

utils.opt('b', 'expandtab', true)
utils.opt('o', 'autowrite',true)
utils.opt('o', 'clipboard','unnamed,unnamedplus')
utils.opt('o', 'completeopt',"menuone,noselect")
utils.opt('o', 'smartindent',true)
utils.opt('o', 'tabstop',4)
utils.opt('o', 'softtabstop',4)
utils.opt('o', 'mouse','a')
utils.opt('o', 'updatetime',50)
utils.opt('o', 'signcolumn','yes')
utils.opt('o', 'colorcolumn','80')
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)

