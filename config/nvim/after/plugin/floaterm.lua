vim.g.floaterm_title = ''
vim.g.floaterm_borderchars = '        '  -- 8 spaces to remove the border


-- Set the background for floating windows (like Floaterm) to non-transparent
vim.cmd([[highlight Floaterm guibg=#292c3d]])

-- Optionally, set the background for the border of floating windows to non-transparent
vim.cmd([[highlight FloatermBorder guibg=#292c3d]])

vim.cmd [[
  let g:floaterm_width = 0.785          " Set width of the floating terminal as 80% of the screen width
  let g:floaterm_height = 0.4          " Set height of the floating terminal as 80% of the screen height
	let g:floaterm_wintype = 'float'     " Set the floating window type
  let g:floaterm_position = 'bottomright' " Set the position of the floating terminal
  let g:floaterm_border = 'rounded'    " Set border style ('none', 'single', 'double', 'shadow', 'rounded')
  setlocal statusline=


	" Key mappings for floating terminal commands
  nnoremap <leader>t :FloatermToggle<CR>   " Toggle floating terminal with <leader>t
  nnoremap <leader>n :FloatermNew<CR>      " Open a new floating terminal with <leader>n
]]



