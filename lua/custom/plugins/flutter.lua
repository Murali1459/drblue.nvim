return {
  'nvim-flutter/flutter-tools.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    require('telescope').load_extension 'flutter'
    require('flutter-tools').setup {
      widget_guides = {
        enabled = true,
      },
      dev_log = {},
      outline = {
        auto_open = true,
      },
      settings = {
        updateImportsinRename = true,
      },
    }
    vim.keymap.set('n', '<leader>fc', ':Telescope flutter commands<CR>', { silent = true, desc = 'Open Flutter Commands' })
  end,
}
