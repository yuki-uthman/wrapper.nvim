vim.cmd("packadd wrapper.nvim")

local wrapper = require("wrapper")
wrapper.setup({
	lua = "print({})",
	javascript = "console.log({})",
})

vim.keymap.set("n", "<c-w>", wrapper.wrap_under_cursor)
vim.keymap.set("i", "<c-w>", wrapper.wrap_variable)
