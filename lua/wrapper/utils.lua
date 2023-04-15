local M = {}

function M.get_word_under_cursor()
	return vim.fn.expand("<cword>")
end

function M.get_variable()
  local line = vim.api.nvim_get_current_line()
  local variable = string.match(line, "(%w+)%s*=")

  return variable
end

function M.feedkeys(keys, mode)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(keys, true, true, true), mode, true)
end

return M
