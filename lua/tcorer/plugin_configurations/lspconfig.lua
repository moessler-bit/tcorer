vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next) -- deez nuts
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('LspconfigLspKeymaps', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts) -- let x: i32;
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts) -- let x: i32 = 5;
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        -- vim.keymap.set('n', '<space>wl', function()
        --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        -- end, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts) -- rename
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts) -- code action
        vim.keymap.set('n', '<leader>df', function() -- do format
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})
