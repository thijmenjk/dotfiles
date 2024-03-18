return {
  'ThePrimeagen/harpoon',
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>a', function()
      mark.add_file()
      print 'added'
    end)
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

    vim.keymap.set('n', '<leader>1', function()
      require('harpoon.ui').nav_file(1)
    end)
    vim.keymap.set('n', '<leader>2', function()
      require('harpoon.ui').nav_file(2)
    end)
    vim.keymap.set('n', '<leader>3', function()
      require('harpoon.ui').nav_file(3)
    end)
    vim.keymap.set('n', '<leader>4', function()
      require('harpoon.ui').nav_file(4)
    end)
    vim.keymap.set('n', '<leader>5', function()
      require('harpoon.ui').nav_file(5)
    end)

    vim.keymap.set('n', '<leader>q', function()
      require('harpoon.term').gotoTerminal(1)
    end)
    vim.keymap.set('n', '<leader>w', function()
      require('harpoon.term').gotoTerminal(2)
    end)
    vim.keymap.set('n', '<leader>e', function()
      require('harpoon.term').gotoTerminal(3)
    end)
    vim.keymap.set('n', '<leader>r', function()
      require('harpoon.term').gotoTerminal(4)
    end)
  end,
}
