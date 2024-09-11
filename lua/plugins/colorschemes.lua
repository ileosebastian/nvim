return {
    -- {
    --     "sainnhe/sonokai",
    --     lazy = false,
    --     priority = 1000,
    --     config = function()
    --         vim.g.sonokai_enable_italic = 1
    --         vim.g.sonokai_style = 'espresso'
    --         -- vim.cmd.colorscheme("sonokai")
    --     end
    -- },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
        config = function()
            -- Lua initialization file
            vim.g.moonflyItalics = true
            -- vim.cmd.colorscheme("kanagawa-dragon")
            vim.cmd.colorscheme("moonfly")
        end,
    }
}
