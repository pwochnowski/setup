-- [[ Configure Telescope ]]
-- https://github.com/nvim-telescope/telescope.nvim
-- See `:help telescope` and `:help telescope.setup()`

require('telescope').setup {
  defaults = {},
  extensions = {
  }
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- Load extension.
--require"telescope".load_extension("frecency")
--

local builtin = require('telescope.builtin')
local extensions = require('telescope').extensions

vim.keymap.set('n', '<leader>?', builtin.keymaps, { desc = '[?] ' })

vim.keymap.set('n', '<leader><Leader>', extensions.frecency.frecency, { desc = '[?] Find recently opened files' })
--vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })

vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })

vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '[S]earch [F]iles' })

vim.keymap.set('n', '<leader>a', builtin.quickfix, { desc = 'show quick[a]ction' })


vim.keymap.set('n', '<C-p>', builtin.git_files, {})

