return {
  -- https://github.com/maxmx03/solarized.nvim
  'maxmx03/solarized.nvim',
  lazy = false,
  priority = 1000,
  -- @type solarized.config
  opts = {
    variant = 'summer',
  },
  config = function()
    -- vim.o.termguicolors = true
    -- vim.o.background = 'dark'
    -- require('solarized').setup(opts)
    -- vim.cmd.colorscheme 'solarized'
  end,
}
