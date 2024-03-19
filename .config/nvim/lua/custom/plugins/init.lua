-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.opt.conceallevel = 1
return {
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
  {
    'epwalsh/obsidian.nvim',
    version = '*', -- recommended, use latest release instead of latest commit
    lazy = true,
    picker = {
      -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
      name = 'telescope.nvim',
      -- Optional, configure key mappings for the picker. These are the defaults.
      -- Not all pickers support all mappings.
      mappings = {
        -- Create a new note from your query.
        new = '<C-x>',
        -- Insert a link to the selected note.
        insert_link = '<C-l>',
      },
    },
    ft = 'markdown',
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      'nvim-lua/plenary.nvim',

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      completion = {
        nvim_cmp = true,
        -- Trigger completion at 2 chars.
        min_chars = 2,
      },
      mappings = {
        ['<leader>ch'] = {
          action = function()
            return require('obsidian').util.toggle_checkbox()
          end,
          opts = { buffer = true },
        },
        ['<leader>t'] = {
          action = function()
            -- run vim command ObsidianToday

            vim.cmd 'ObsidianToday'
          end,
        },
        ['gd'] = {
          action = function()
            vim.cmd 'ObsidianFollowLink'
          end,
        },
        ['<leader>sg'] = {
          action = function()
            vim.cmd 'ObsidianSearch'
          end,
        },
      },
      workspaces = {
        {
          name = 'work',
          path = '~/vaults/work',
        },
      },
      daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = 'daily notes',
        -- Optional, if you want to change the date format for the ID of daily notes.
        date_format = '%Y-%m-%d',
        -- Optional, if you want to change the date format of the default alias of daily notes.
        alias_format = '%B %-d, %Y',
        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = nil,
      },
      ui = {
        enable = true, -- set to false to disable all additional syntax features
        update_debounce = 200, -- update delay after a text change (in milliseconds)
        -- Define how various check-boxes are displayed
        checkboxes = {
          -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
          ['>'] = { char = '>', hl_group = 'ObsidianRightArrow' },
          ['~'] = { char = '~', hl_group = 'ObsidianTilde' },
          [' '] = { char = '☐', hl_group = 'ObsidianTodo' },
          ['x'] = { char = '✔', hl_group = 'ObsidianDone' },
        },
        -- Use bullet marks for non-checkbox lists.
        bullets = { char = '•', hl_group = 'ObsidianBullet' },
        -- Replace the above with this if you don't have a patched font:
        external_link_icon = { char = '', hl_group = 'ObsidianExtLinkIcon' },
        reference_text = { hl_group = 'ObsidianRefText' },
        highlight_text = { hl_group = 'ObsidianHighlightText' },
        tags = { hl_group = 'ObsidianTag' },
        block_ids = { hl_group = 'ObsidianBlockID' },
        hl_groups = {
          ObsidianTodo = { bold = true, fg = '#f78c6c' },
          ObsidianDone = { bold = true, fg = '#89ddff' },
          ObsidianRightArrow = { bold = true, fg = '#f78c6c' },
          ObsidianTilde = { bold = true, fg = '#ff5370' },
          ObsidianBullet = { bold = true, fg = '#89ddff' },
          ObsidianRefText = { underline = true, fg = '#c792ea' },
          ObsidianExtLinkIcon = { fg = '#c792ea' },
          ObsidianTag = { italic = true, fg = '#89ddff' },
          ObsidianBlockID = { italic = true, fg = '#89ddff' },
          ObsidianHighlightText = { bg = '#75662e' },
        },
      },
    },
  },
}
