local M = {}

M.source_vim = function(fn)
  local path = os.getenv('MYVIMRC'):gsub('init%.lua$', '')
  local file = path .. 'lua/custom/vim-functions/' .. fn .. '.vim'
  vim.cmd('source ' .. file)
end

M.setup = function()
  M.source_vim 'files-shennanigans'
  M.source_vim 'better-backspace'
end

return M
