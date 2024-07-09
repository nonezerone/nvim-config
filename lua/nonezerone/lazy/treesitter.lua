return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "vimdoc", "javascript", "typescript", "c", "lua", "rust", "jsdoc", "bash", "ruby" },
            sync_install = false,
            auto_install = true,

            indent = { enable = true, disable = { "ruby" }, },

            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "ruby" },
            },
        })

        vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
            group = vim.api.nvim_create_augroup("CommonGroup", { clear = true }),
            pattern = { "*.erb", "*.eruby" },
            command = "set syntax=html",
        })
    end
}
