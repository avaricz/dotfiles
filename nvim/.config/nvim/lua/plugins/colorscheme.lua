return {
    {
        "Mofiqul/vscode.nvim",
        config = function()
            -- Nastaví VSCode Dark+
            vim.cmd[[colorscheme vscode]]
            -- Volitelně:
            vim.g.vscode_style = "dark"  -- nebo "light"
        end,
    },
}
