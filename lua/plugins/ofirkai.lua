return {
  "ofirgall/ofirkai.nvim",
  config = function()
    vim.cmd.colorscheme "ofirkai-darkblue"
    theme = nil -- Choose theme to use, available themes: 'dark_blue'

    scheme = require('ofirkai').scheme -- Option to override scheme
    custom_hlgroups = {}             -- Option to add/override highlight groups
    remove_italics = false
  end
}
