local status, toggleterm = pcall(require, "toggleterm")
if (not status) then return end

toggleterm.setup({
  size = 30,
  open_mapping = [[<C-t>]],
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = true,
  persist_size = true,
  direction = "float",
  float_opts = { border = "curved" },
})