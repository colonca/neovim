local utils = require('utils')

vim.g.telescope_cache_results = 1
vim.g.telescope_cache_results = 1

--Find files using telescope comman-line sugar
utils.map('n','<Leader>ff',':Telescope find_files<CR>',opts)
utils.map('n','<Leader>fg',':Telescope live_grep<CR>',opts)
utils.map('n','<Leader>fb',':Telescope buffers<CR>',opts)
utils.map('n','<Leader>fb',':Telescope help_tags<CR>',opts)

