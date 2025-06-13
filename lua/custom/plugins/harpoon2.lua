return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
    -- stylua: ignore
    keys = {
      { '<leader>a', function() require('harpoon'):list():add() end, desc = 'Harpoon: Add current file to buffer list', },
      { '<C-e>', function() require('harpoon').ui:toggle_quick_menu(require('harpoon'):list()) end, desc = 'Harpoon: Toggle buffer list', },
      { '<C-t>', function() require('harpoon'):list():select(1) end, desc = 'Harpoon: Go to buffer #1', },
      { '<C-h>', function() require('harpoon'):list():select(2) end, desc = 'Harpoon: Go to buffer #2', },
      { '<C-n>', function() require('harpoon'):list():select(3) end, desc = 'Harpoon: Go to buffer #3', },
      { '<C-s>', function() require('harpoon'):list():select(4) end, desc = 'Harpoon: Go to buffer #4', },
      -- Toggle previous & next buffers stored within Harpoon list
      { '<C-z>', function() require('harpoon'):list():prev() end, desc = 'Harpoon: Go to previous buffer', },
      { '<C-x>', function() require('harpoon'):list():next() end, desc = 'Harpoon: Go to next buffer', },
    },
}
