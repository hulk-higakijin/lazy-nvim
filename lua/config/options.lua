-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.opt.relativenumber = false
vim.opt.number = true

-- remove whitespace when file have saved
vim.api.nvim_create_augroup("RemoveTrailingWhitespace", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  group = "RemoveTrailingWhitespace",
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

