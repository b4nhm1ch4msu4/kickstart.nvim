return {
  --   'folke/tokyonight.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     ---@diagnostic disable-next-line: missing-fields
  --     require('tokyonight').setup {
  --       styles = {
  --         comments = { italic = false }, -- Disable italics in comments
  --       },
  --     }
  --
  --     vim.cmd.colorscheme 'tokyonight-storm'
  --   end,
  -- },
  {
    'zootedb0t/citruszest.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('citruszest').setup {
        -- transparent_background = true,
      }
      vim.cmd.colorscheme 'citruszest'
    end,
  },
}
