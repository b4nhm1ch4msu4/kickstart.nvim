return {
  'akinsho/toggleterm.nvim',
  lazy = true,
  keys = { '<A-i>' },
  version = '*',
  opts = {
    open_mapping = [[<A-i>]],
    direction = 'float',
    float_opts = {
      border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
      winblend = 0,
      title_pos = 'left', -- 'left' | 'center' | 'right', position of the title of the floating window
    },
  },
}
