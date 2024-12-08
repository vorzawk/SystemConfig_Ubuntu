require'lspconfig'.clangd.setup{
   cmd = { 'clangd' }
   }
vim.keymap.set('n', ' j', vim.lsp.buf.definition)
vim.keymap.set('n', ' r', vim.lsp.buf.references)
vim.keymap.set('n', ' h', vim.lsp.buf.hover)
