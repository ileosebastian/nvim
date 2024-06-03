return {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("moonfly")
        -- Lua initialization file
        vim.g.moonflyItalics = true
    end,
}
