-- treesitter.lua
require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      -- Add WGSL parser first
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.wgsl = {
        install_info = {
          url = "https://github.com/szebniok/tree-sitter-wgsl",
          files = { "src/parser.c" },
          branch = "main",
        },
        filetype = "wgsl",
      }

      configs.setup({
        ensure_installed = {
          "c", "lua", "vim", "vimdoc", "query",
          "elixir", "heex", "javascript", "html", "wgsl",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
})



