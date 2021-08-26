local utils = require('utils')
local cmd = vim.cmd

utils.opt('o', 'termguicolors', true)
utils.opt('o', 'background', 'dark')
cmd [[colorscheme gruvbox]]

--Transparency
--highlight Normal ctermbg=NONE guibg=NONE
-- highlight EndOfBuffer ctermbg=NONE guibg=NONE

cmd "highlight ColorColumn ctermbg=0 guibg=grey"
--highlight Normal guibg=none
-- highlight LineNr guifg=#ff8659
-- highlight LineNr guifg=#aed75f
cmd "highlight LineNr guifg=#5eacd3"
cmd "highlight netrwDir guifg=#5eacd3"
cmd "highlight qfFileName guifg=#aed75f"
cmd "hi TelescopeBorder guifg=#5eacd0"


