return {
  'folke/snacks.nvim',
  lazy = false,
  opts = {
    picker = {},
    indent = {},
    explorer = {},
  },
  keys = {
    {
      '<leader><space>',
      function()
        Snacks.picker.smart()
      end,
      desc = 'Find [S]mart',
    },

    -- find
    {
      '<leader>fb',
      function()
        Snacks.picker.buffers()
      end,
      desc = 'Find [b]uffers',
    },
    {
      '<leader>fg',
      function()
        Snacks.picker.grep()
      end,
      desc = 'Find [g]rep',
    },
    {
      '<leader>fw',
      function()
        Snacks.picker.grep_word()
      end,
      desc = 'Find current [w]ord',
    },
    {
      '<leader>fW',
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = 'Open Buffers Find [W]ord',
    },
    {
      '<leader>fd',
      function()
        Snacks.picker.diagnostics()
      end,
      desc = 'Find [d]iagnostics',
    },
    {
      '<leader>fD',
      function()
        Snacks.picker.diagnostics_buffer()
      end,
      desc = 'Open buffers [D]iagnostics',
    },
    {
      '<leader>fh',
      function()
        Snacks.picker.help()
      end,
      desc = 'Find [H]elps',
    },
    {
      '<leader>fi',
      function()
        Snacks.picker.icons()
      end,
      desc = 'Find [i]cons',
    },
    {
      '<leader>fj',
      function()
        Snacks.picker.jumps()
      end,
      desc = 'Find [j]umps list',
    },
    {
      '<leader>fl',
      function()
        Snacks.picker.lines()
      end,
      desc = 'Find [l]ines',
    },
    {
      '<leader>ff',
      function()
        Snacks.picker.files()
      end,
      desc = 'Find [f]iles',
    },
    {
      '<leader>fo',
      function()
        Snacks.picker.recent()
      end,
      desc = 'Find [O]ld Files',
    },
    {
      '<leader>fk',
      function()
        Snacks.picker.keymaps()
      end,
      desc = 'Find [k]eymaps',
    },
    {
      '<leader>fr',
      function()
        Snacks.picker.resume()
      end,
      desc = 'Find [r]esume',
    },
    -- LSP
    {
      'gd',
      function()
        Snacks.picker.lsp_definitions()
      end,
      desc = 'Go to [d]efinition',
    },
    {
      'gi',
      function()
        Snacks.picker.implementations()
      end,
      desc = 'Go to [i]mplementations',
    },
    {
      'gr',
      function()
        Snacks.picker.lsp_references()
      end,
      desc = 'Go to [r]eferences',
    },
    {
      'gs',
      function()
        Snacks.picker.lsp_symbols()
      end,
      desc = 'Go to [s]ymbols',
    },
    {
      'gS',
      function()
        Snacks.picker.lsp_wordspace_symbols()
      end,
      desc = 'Go to [S]ymbols in Workspace',
    },
    -- Neovim related
    {
      '<leader>fc',
      function()
        Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
      end,
      desc = 'Neovim Find [c]onfig File',
    },
    {
      '<leader>:',
      function()
        Snacks.picker.command_history()
      end,
      desc = 'Neovim Command[:] History',
    },
    {
      "<leader>'",
      function()
        Snacks.picker.registers()
      end,
      desc = "Neovim Registers[']",
    },
    {
      '<leader>nc',
      function()
        Snacks.picker.commands()
      end,
      desc = 'Neovim [c]ommands',
    },
    {
      '<leader>nt',
      function()
        Snacks.picker.colorschemes()
      end,
      desc = 'Neovim [t]hemes',
    },
    {
      '\\',
      function()
        Snacks.explorer()
      end,
    },
  },
}
