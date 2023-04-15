local utils = require("wrapper.utils")
local template = require("wrapper.template")
local buffer = require("wrapper.buffer")

local M = {}

function M.setup(opts)
	template.setup(opts)
end

function M.wrap_under_cursor()
	local word = utils.get_word_under_cursor()

	local wrapped = template.wrap(word)
	if not wrapped then
		return
	end

	buffer.insert(0, wrapped)
end

function M.wrap_variable()
	local word = utils.get_variable()
	if not word then
		return
	end

	local wrapped = template.wrap(word)
	if not wrapped then
		return
	end

	buffer.append(wrapped)
end

return M
