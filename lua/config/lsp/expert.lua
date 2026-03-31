vim.lsp.config('expert', {
  -- make sure expert is in $PATH
  cmd = { 'expert', '--stdio' },
  root_markers = { 'mix.exs', '.git' },
  filetypes = { 'elixir', 'heex' },
})

vim.lsp.enable('expert')
