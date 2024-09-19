-- nvim custom commands 

------- list of commands --------
-- ClangFormat : Formats code according to clang 
---------------------------------

------ list of keybindings ------
--- SHIFT + T : Toggle floating terminal
---------------------------------

vim.api.nvim_create_user_command(
  'ClangFormat',  -- Command name: :ClangFormat
  function()
    vim.cmd('%!clang-format')
  end,
  { desc = "Format current buffer with clang-format" }
)

vim.api.nvim_set_keymap('n', '<C-t>', ':FloatermToggle<CR>', { noremap = true, silent = true })

