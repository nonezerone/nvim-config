function GetColourHere(color)
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)
end

return {
	{
		"rebelot/kanagawa.nvim",
        config = function()
            require("kanagawa").setup({
                commentStyle = { italic = false },
                functionStyle = { italic = false },
                keywordStyle = { italic = false },
                statementStyle = { bold = true },
                theme = "dragon",
            })
            GetColourHere()
        end
    }
}
