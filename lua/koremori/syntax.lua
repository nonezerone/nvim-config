local autocmd = vim.api.nvim_create_autocmd

autocmd("BufReadPost", {
    pattern = { "*.erb", "*.eruby" },
    command = "set syntax=html",
})
