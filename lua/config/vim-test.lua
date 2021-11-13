local utils = require('utils')
local cmd = vim.cmd
local opts = { noremap = true, silent = false }

utils.map('n','t<C-n>',':TestNearest<CR>',opts)
utils.map('n','t<C-f>',':TestFile<CR>',opts)
utils.map('n','t<C-s>',':TestSuite<CR>',opts)
utils.map('n','t<C-l>',':TestLast<CR>',opts)
utils.map('n','t<C-g>',':TestVisit<CR>',opts)


cmd[[let g:test#php#phpunit#executable = 'docker exec app php artisan test']]
