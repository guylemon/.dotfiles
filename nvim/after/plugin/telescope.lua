local builtin = require('telescope.builtin')
-- Find all files by name
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- Find git files by name
vim.keymap.set('n', '<leader>gg', builtin.git_files, {})
-- Use ripgrep
-- (may require installation) 
vim.keymap.set('n', '<leader>ss', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

