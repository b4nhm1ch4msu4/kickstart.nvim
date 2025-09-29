return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  lazy = true,
  keys = { '<leader>e', '<cmd>Oil<cr>' },
  config = function()
    require('oil').setup { skip_confirm_for_simple_edits = true }
    vim.keymap.set('n', '<leader>e', function()
      require('oil').toggle_float()
    end, { desc = 'Oil toggle window' })
  end,
}
