vim.pack.add({
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/MeanderingProgrammer/treesitter-modules.nvim'
}, { confirm = false })

require('nvim-treesitter').install({
  'elixir',
  'lua',
  'rust'
})

require('treesitter-modules').setup({
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<Tab>',
      node_decremental = '<S-Tab>'
    }
  }
})
