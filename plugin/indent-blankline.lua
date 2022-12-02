local status, indent = pcall(require, "indent_blankline")
if (not status) then return end

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

indent.setup {
  space_char_blankline = " ",
  show_current_context = false,
  show_current_context_start = false,
}