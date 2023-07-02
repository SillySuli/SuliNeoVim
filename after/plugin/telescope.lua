local builtin = require('telescope.builtin')

-- when you are not in the git repo, find all files.
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- allow you to have a git file search
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()

	builtin.grep_string({search = vim.fn.input("Grep > ")});
end)
