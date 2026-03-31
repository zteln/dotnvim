vim.pack.add({ 'https://github.com/folke/tokyonight.nvim' }, { confirm = false })

require('tokyonight').setup({
  style = 'night',
  dim_inactive = true,
  styles = {
    comments = { italic = false },
    keywords = { italic = false }
  }
})

vim.cmd [[colo tokyonight]]
