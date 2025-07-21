return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function()
      local harpoon = require 'harpoon'
      vim.keymap.set('n', '<leader>jj', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<leader>ja', function()
        harpoon:list():add()
      end)

      vim.keymap.set('n', '<C-1>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-2>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-3>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-4>', function()
        harpoon:list():select(4)
      end)
      vim.keymap.set('n', '<C-5>', function()
        harpoon:list():select(5)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '[h', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', ']h', function()
        harpoon:list():next()
      end)
    end,
    config = function()
      local harpoon = require 'harpoon'
      -- local extensions = require 'harpoon.extensions'
      harpoon:setup {
        settings = {
          -- sync_on_ui_close = true,
          save_on_toggle = true,
        },
      }
      -- harpoon:extend(extensions.builtins.navigate_with_number())
    end,
  },
}
