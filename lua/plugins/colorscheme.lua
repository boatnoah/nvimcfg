return {
{
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        notify = false,
        alpha = true,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        telescope = true,
      },
    },
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'

      -- you can configure highlights by doing something like:
      vim.cmd.hi 'comment gui=none'
    end,
  
}}
