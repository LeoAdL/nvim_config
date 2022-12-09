vim.g.tex_flavor = "latex"
vim.g.vimtex_view_method = "skim"
vim.g.maplocalleader = " "
vim.cmd([[function! s:write_server_name() abort
  let nvim_server_file = (has('win32') ? $TEMP : '/tmp') . '/vimtexserver.txt'
  call writefile([v:servername], nvim_server_file)
endfunction

augroup vimtex_common
  autocmd!
  autocmd FileType tex call s:write_server_name()
augroup END
]])
