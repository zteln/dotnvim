vim.pack.add({ 'https://github.com/stevearc/oil.nvim' }, { confirm = false })

require('oil').setup({
  columns = { 'size' },
  skip_confirm_for_simple_edits = true,
  keymaps = {
    ['<C-h>'] = false,
    ['<C-l>'] = false
  },
  view_options = {
    show_hidden = true
  }
})

vim.keymap.set('n', '<C-f>', '<Cmd>Oil<CR>', { noremap = true })
