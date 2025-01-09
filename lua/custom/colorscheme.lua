local M = {}

M.setup = function()
  vim.cmd.colorscheme 'catppuccin'
  vim.cmd.hi 'Comment gui=none'
  local fhandle = io.popen 'sw info'
  if fhandle ~= nil then
    local result = fhandle:read '*a'
    fhandle:close()
    vim.opt.background = result == 'BreezeLight' and 'light' or 'dark'
  end
end

return M
