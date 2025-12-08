-- LSP config for rust-analyzer
local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      checkOnSave = { command = "clippy" }, -- runs clippy on save
    },
  },
})

lspconfig.wgsl_analyzer.setup({
    cmd = { "wgsl-analyzer" },
    filetypes = { "wgsl" },
    root_dir = lspconfig.util.root_pattern(".git", "wgsl"),
})



