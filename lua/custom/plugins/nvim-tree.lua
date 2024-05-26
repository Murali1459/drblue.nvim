return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    'DaikyXendo/nvim-material-icon',
  },
  config = function()
    require('nvim-tree').setup {
      git = { enable = false },
      update_focused_file = { enable = true, update_cwd = true },
    }
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle NvimTree' })
  end,
}
