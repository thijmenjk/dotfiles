-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'epwalsh/pomo.nvim',
    version = '*', -- Recommended, use latest release instead of latest commit
    lazy = true,
    cmd = { 'TimerStart', 'TimerRepeat' },
    dependencies = {
      'rcarriga/nvim-notify',
    },
    opts = {
      notifiers = {
        {
          name = 'Default',
          opts = {
            sticky = false,

            title_icon = '⏳',
            text_icon = '⏱️',
          },
        },
      },
    },
  },
  {
    'folke/zen-mode.nvim',
    opts = {
      plugins = {
        options = {
          enabled = true,
          ruler = true,
          showcmd = true,
          laststatus = 3,
        },
      },
    },
  },
  'tpope/vim-surround',
  'tpope/vim-repeat',
}
