require("nvim-treesitter.configs").setup {
  ensure_installed = { "javascript", "typescript", "ruby", "c", "lua", "vim", "vimdoc", "query" },

  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    additional_vim_regex_highlighting = false,
  },
}
