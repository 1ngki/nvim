local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
  options = {
    sort_by = sort_by_mtime,
    numbers = 'none',
    separator_style = 'thick',
    show_close_icon = false,
    show_buffer_close_icons = false,
    color_icons = true
  }
})

-- vim.keymap.set('n', '<leader>e', '<Cmd>BufferLinePickClose<CR>', {})
vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})