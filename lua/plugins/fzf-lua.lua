return {
  'ibhagwan/fzf-lua',
  enabled = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('fzf-lua').setup()
    vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<CR>')
    vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua live_grep<CR>')
    vim.keymap.set('n', '<leader>fo', '<cmd>FzfLua oldfiles<CR>')
    vim.keymap.set('n', '<leader>fl', '<cmd>FzfLua blines<CR>')
    vim.keymap.set('n', '<leader>fw', '<cmd>FzfLua grep<CR>')
    vim.keymap.set('n', '<leader>fr', '<cmd>FzfLua resume<CR>')

    vim.keymap.set('n', 'grr', '<cmd>FzfLua lsp_references<CR>')
    vim.keymap.set('n', 'grd', '<cmd>FzfLua lsp_definitions<CR>')
    vim.keymap.set('n', 'grD', '<cmd>FzfLua lsp_declarations<CR>')
    vim.keymap.set('n', 'gri', '<cmd>FzfLua lsp_implementations<CR>')
    vim.keymap.set('n', 'grs', '<cmd>FzfLua lsp_document_symbols<CR>')
    vim.keymap.set('n', 'grS', '<cmd>FzfLua lsp_workspace_symbols<CR>')
    vim.keymap.set('n', 'gra', '<cmd>FzfLua lsp_code_actions<CR>')

    vim.keymap.set('n', '<leader>fh', '<cmd>FzfLua helptags<CR>')
    vim.keymap.set('n', '<leader>ft', '<cmd>FzfLua colorschemes<CR>')
    vim.keymap.set('n', '<leader>fk', '<cmd>FzfLua keymaps<CR>')
  end,
}
