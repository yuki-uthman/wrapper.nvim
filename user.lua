vim.cmd "packadd wrapper.nvim"

local wrapper = require("wrapper")
wrapper.setup {
  lua = "print({})",
  javascript = "console.log({})",
}
