require'lspconfig'.clangd.setup{
--   cmd = { '' }
   }
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
