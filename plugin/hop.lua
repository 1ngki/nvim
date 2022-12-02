local status, hop = pcall(require, "hop")
if (not status) then return end

hop.setup {
  keys = 'etovxqpdygfblzhckisuran'
}

vim.api.nvim_set_keymap('', ';;s', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection})<cr>", {})