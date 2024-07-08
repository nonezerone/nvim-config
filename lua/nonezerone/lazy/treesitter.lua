return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
      require("nvim-treesitter.configs").setup({
          -- A list of parser names, or "all"
          ensure_installed = {
              "vimdoc", "javascript", "typescript", "c", "lua", "rust", "jsdoc", "bash", "ruby"
          },

          sync_install = false,

          auto_install = true,

          indent = {
              enable = true,
              disable = { "ruby" },
          },

          highlight = {
              enable = true,
              additional_vim_regex_highlighting = { "ruby" },
          },

          endwise = {
              enable = true,
          },
      })
  end
}
