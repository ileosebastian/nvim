
local settings = {
  "set clipboard=unnamedplus",

  "set number",
  "set relativenumber",
  "set colorcolumn=80",
  "set cursorline",

  "set expandtab",
  "set tabstop=4",
  "set shiftwidth=4",

  "set smartindent",

  "set hlsearch",
  "set noincsearch",
  --"set updatetime=50",
  "colorscheme habamax",
}

for _,set in ipairs(settings) do
  vim.cmd(set)
end

