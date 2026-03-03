-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.clipboard = "unnamedplus"

local wgsl_group = vim.api.nvim_create_augroup("WgslFormat", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.wgsl",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
  group = wgsl_group,
})
