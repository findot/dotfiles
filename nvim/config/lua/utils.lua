
local P = {}

P.map = function(modes, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  for mode in modes:gmatch('.') do
    vim.keymap.set(mode, lhs, rhs, options)
  end
end


return P
