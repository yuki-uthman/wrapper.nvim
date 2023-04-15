local M = {
  lua = "print({})",
  javascript = "console.log({})",
}

function M.setup(opts)
  M = vim.tbl_extend("force", M, opts)
end


function M.wrap(word)
  local filetype = vim.bo.filetype
  local template = M[filetype]

  if not template then
    vim.api.nvim_err_writeln("No template for filetype: " .. filetype)
    return
  end

  return template:gsub("{}", word)
end


return M
