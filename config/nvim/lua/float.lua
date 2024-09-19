-- Function to open floaterm with different widths based on Nvim Tree visibility
local M = {}

function M.open_floaterm()
  local view = require('nvim-tree.view')
  
  local width, height
  if view.is_visible() then
    width = 105  -- use integer values
    height = 10
  else
    width = 155
    height = 10
  end
  
  vim.cmd(string.format('FloatermNew --width=%d --height=%d', width, height))
end

return M
