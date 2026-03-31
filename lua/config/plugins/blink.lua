vim.pack.add({ 
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('^1') },
  'https://github.com/rafamadriz/friendly-snippets'
}, { confirm = false })

require('blink.cmp').setup({
  fuzzy = { implementation = 'prefer_rust_with_warning' },
  signature = { enabled = true },
  completion = { documentation = { auto_show = true }}
})
