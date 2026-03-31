local M = {}

-- returns escaped name of where session files are stored for current directory
function M.get_current_session_name()
  -- make sure dir exists...
  local dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/")
  local name = vim.fn.getcwd():gsub("/", "%%")
  return vim.fn.fnameescape(dir .. name .. ".vim")
end

return M
