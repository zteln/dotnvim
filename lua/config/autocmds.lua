-- create session before exiting
vim.api.nvim_create_autocmd('VimLeavePre', {
    pattern = '*',
    callback = function()
        vim.cmd [[ccl]]
        local current_session_name = require('config.utils').get_current_session_name()
        vim.cmd('mksession! ' .. current_session_name)
    end
})

-- set match highlight when searching
vim.api.nvim_create_autocmd({ "CmdLineEnter" }, {
    pattern = { '/,\\?' },
    command = 'set hlsearch',
})

-- unset match highlight
vim.api.nvim_create_autocmd({ "CmdLineLeave" }, {
    pattern = '*',
    command = 'set nohlsearch',
})

-- make quickfix span window
vim.api.nvim_create_autocmd({ "QuickFixCmdPost" }, {
    pattern = { 'cgetexpr', '[^l]*' },
    command = 'cwindow',
})

-- autoformat on write
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = '*',
    callback = function()
        vim.lsp.buf.format()
    end
})
