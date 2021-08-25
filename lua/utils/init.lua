local utils = {}

local scopes = {o = vim.o, w = vim.wo, b = vim.bo }

function utils.opt(scope, key, value)
  scopes[scope][key] = value
  if  scope ~= 'o' then scopes['o'][key] = value end
end

function utils.map(mode,lhs, rhs, opts)
   local options = {noremap = true}
   if opts then vim.tbl_extend('force',options,opts) end
   vim.api.nvim_set_keymap(mode,lhs,rhs,options)
end


return utils
