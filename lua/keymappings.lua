local utils = require('utils')
local opts = { noremap = true, silent = false }

utils.map('n','<Space>','<NOP>',{silent = false})
vim.g.mapleader = ' '

--I hate escape
utils.map('i','jj','<ESC>',opts)
utils.map('i','kj','<ESC>',opts)
utils.map('i','jk','<ESC>',opts)

--explorer
utils.map('n','<Leader>e',':NvimTreeToggle<CR>',opts)

--better window movement
utils.map('n','<C-h>','<C-w>h',{silent = false})
utils.map('n','<C-j>','<C-w>j',{silent = false})
utils.map('n','<C-k>','<C-w>k',{silent = false})
utils.map('n','<C-l>','<C-w>l',{silent = false})

-- Alternate way to save
utils.map('n','<C-s>',':w<CR>',opts)
-- Alternate way to quit and save
utils.map('n','<C-q>',':wq!<CR>',opts)

--buffer tab bar
-- Move to previous/next
utils.map('n', '<A-,>', ':BufferPrevious<CR>', opts)
utils.map('n', '<A-.>', ':BufferNext<CR>', opts)

-- Close current buffer
utils.map('n','<A-c>', ':BufferClose<CR>', opts)

-- better tabbing
utils.map('v','<','<gv',opts)
utils.map('v','<','>gv',opts)

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- shift + j to move down
utils.map('x','K',':move \'<-2<CR>gv-gv\'',opts)
utils.map('x','J',':move \'>+1<CR>gv-gv\'',opts)

--Tab switch buffer 
utils.map('n','<TAB>',':bnext<CR>',opts)
utils.map('n','<S-TAB>',':bprevious<CR>',opts)

--Find files using telescope comman-line sugar
utils.map('n','<Leader>ff',':Telescope find_files<CR>',opts)
utils.map('n','<Leader>fg',':Telescope live_grep<CR>',opts)
utils.map('n','<Leader>fb',':Telescope buffers<CR>',opts)
utils.map('n','<Leader>fb',':Telescope help_tags<CR>',opts)
