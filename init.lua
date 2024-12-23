require("config.lazy")

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.backspace = { "indent", "eol", "start" }

vim.opt.number = true
vim.opt.list = true

vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("tab:→⠀")
vim.opt.listchars:append("eol:↴")

vim.cmd [[
  highlight Pmenu ctermfg=white ctermbg=black gui=NONE guifg=white guibg=black
  highlight PmenuSel ctermfg=white ctermbg=blue gui=bold guifg=white guibg=purple
]]
