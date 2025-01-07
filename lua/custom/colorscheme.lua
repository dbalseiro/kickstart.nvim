local M = {}

M.setup = function()
  vim.cmd.colorscheme 'catppuccin'
  vim.cmd.hi 'Comment gui=none'
  local handle = io.popen 'sw info'
  if handle ~= nil then
    local result = handle:read '*a'
    handle:close()
    vim.opt.background = result == 'BreezeLight' and 'light' or 'dark'
  end
end

return M
