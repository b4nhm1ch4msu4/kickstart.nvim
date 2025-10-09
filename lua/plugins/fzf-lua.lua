return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup()
    vim.keymap.set('n', '<leader>zf', '<cmd>FzfLua files<CR>')
    vim.keymap.set('n', '<leader>zg', '<cmd>FzfLua live_grep<CR>')
    vim.keymap.set('n', '<leader>zo', '<cmd>FzfLua oldfiles<CR>')
    vim.keymap.set('n', '<leader>zl', '<cmd>FzfLua blines<CR>')
    vim.keymap.set('n', '<leader>zw', '<cmd>FzfLua grep<CR>')
    vim.keymap.set('n', '<leader>zr', '<cmd>FzfLua resume<CR>')

    vim.keymap.set('n', 'zgr', '<cmd>FzfLua lsp_references<CR>')
    vim.keymap.set('n', 'zgd', '<cmd>FzfLua lsp_definitions<CR>')
    vim.keymap.set('n', 'zgD', '<cmd>FzfLua lsp_declarations<CR>')
    vim.keymap.set('n', 'zgi', '<cmd>FzfLua lsp_implementations<CR>')
    vim.keymap.set('n', 'zgs', '<cmd>FzfLua lsp_document_symbols<CR>')
    vim.keymap.set('n', 'zgS', '<cmd>FzfLua lsp_workspace_symbols<CR>')
    vim.keymap.set('n', 'zga', '<cmd>FzfLua lsp_code_actions<CR>')

    vim.keymap.set('n', '<leader>zh', '<cmd>FzfLua helptags<CR>')
    vim.keymap.set('n', '<leader>zt', '<cmd>FzfLua colorschemes<CR>')
    vim.keymap.set('n', '<leader>zk', '<cmd>FzfLua keymaps<CR>')
  end,
}
