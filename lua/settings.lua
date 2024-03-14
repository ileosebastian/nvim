
local settings = {
  "set clipboard=unnamedplus",

  "set relativenumber",
  "set colorcolumn=80",
  "set cursorline",

  "set expandtab",
  "set tabstop=2",
  "set shiftwidth=2",

  "set smartindent",

  "set hlsearch",
  "set noincsearch",
  --"set updatetime=50",
  --"colorscheme habamax",
}

for i,set in ipairs(settings) do
  vim.cmd(set)
end

