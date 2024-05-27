return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
      hide_numbers = false,
      direction = 'float',
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
      },
    },
  },
}
