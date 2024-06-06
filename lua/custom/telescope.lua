require("telescope").setup {
  extensions = {
    wrap_results = true,

    fzf = {},
  },
}

pcall(require("telescope").load_extension, "fzf")

local builtin = require "telescope.builtin"

vim.keymap.set("n", "<leader>tb", builtin.buffers)
vim.keymap.set("n", "<space>tf", builtin.find_files)
vim.keymap.set("n", "<space>tg", builtin.git_files)
vim.keymap.set("n", "<space>th", builtin.help_tags)
vim.keymap.set("n", "<space>tw", builtin.grep_string)
vim.keymap.set("n", "<space>ts", builtin.live_grep)
vim.keymap.set("n", "<space>/", builtin.current_buffer_fuzzy_find)
