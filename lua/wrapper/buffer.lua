local utils = require("wrapper.utils")

local M = {}

function M.insert(offset, line)
	local cursor = vim.api.nvim_win_get_cursor(0)
	local row = cursor[1] + offset

	vim.api.nvim_buf_set_lines(0, row, row, false, { line })
end

function M.append(line)
	utils.feedkeys("<C-O>", "n")
	utils.feedkeys("$", "n")
	utils.feedkeys("<CR>", "n")
	utils.feedkeys(line, "n")
	utils.feedkeys("<C-F>", "n")
	utils.feedkeys("<CR>", "n")
end

return M
