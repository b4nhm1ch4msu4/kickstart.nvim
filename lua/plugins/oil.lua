return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require('oil').setup { skip_confirm_for_simple_edits = true }
    -- vim.keymap.set('n', '<leader>e', "<CMD>lua require('oil').toggle_float()<CR>", { desc = 'Oil toggle window' })
    vim.keymap.set('n', '<leader>e', function()
      require('oil').open(nil, { split = 'aboveleft' })
    end, { desc = 'Oil toggle window' })
  end,
}
