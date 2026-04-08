local on_attach = function(_, bufnr)
  -- hover
  vim.api.nvim_buf_set_keymap(
    bufnr, 
    'n', 
    '<leader>k', 
    '<cmd>lua vim.lsp.buf.hover()<CR>', 
    { noremap = true, silent = true }
  )

  -- goto def
  vim.api.nvim_buf_set_keymap(
    bufnr, 
    'n', 
    '<leader>ld', 
    '<cmd>lua vim.lsp.buf.definition()<CR>', 
    { noremap = true, silent = true }
  )

  -- diagnostics
  vim.api.nvim_buf_set_keymap(
    bufnr, 
    'n', 
    '<leader>ln', 
    '<cmd>lua vim.diagnostic.goto_next()<CR>', 
    { noremap = true, silent = true }
  )

  vim.api.nvim_buf_set_keymap(
    bufnr, 
    'n', 
    '<leader>lp', 
    '<cmd>lua vim.diagnostic.goto_prev()<CR>', 
    { noremap = true, silent = true }
  )

  vim.api.nvim_buf_set_keymap(
    bufnr, 
    'n', 
    '<leader>lo', 
    '<cmd>lua vim.diagnostic.open_float()<CR>', 
    { noremap = true, silent = true }
  )
end

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client_id = args.data.client_id
    if not client_id then
      return
    end

    local client = vim.lsp.get_client_by_id(client_id)
    if client and client:supports_method("textDocument/completion") then
      -- Enable native LSP completion for this client + buffer
      vim.lsp.completion.enable(true, client_id, args.buf, {
        autotrigger = true
      })
    end
  end
})

vim.lsp.config('*', { on_attach = on_attach })

vim.diagnostic.config({
  virtual_lines = {
    current_line = true
  }
})

require('config.lsp.expert')
