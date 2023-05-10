local M = {}

function M.list_insert_unique(tbl, vals)
  if type(vals) ~= "table" then
    vals = { vals }
  end

  for _, val in ipairs(vals) do
    if not vim.tbl_contains(tbl, val) then
      table.insert(tbl, val)
    end
  end
end

---@param cmd string command to execute
---@param warn? string|boolean if vim.fn.executable <= 0 then warn with warn
---@return boolean
function M.executable(cmd, warn)
  if vim.fn.executable(cmd) > 0 then
    return true
  end
  if warn then
    local message = type(warn) == "string" and warn or ("Command `%s` was not executable"):format(cmd)
    vim.notify(message, vim.log.levels.WARN, { title = "Executable not found" })
  end
  return false
end

return M
