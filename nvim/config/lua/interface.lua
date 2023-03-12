-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Colorscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- Colorizer
require("colorizer").setup({
  "*";
})

-- Bufferline
vim.opt.termguicolors = true
require("bufferline").setup({
  options = {
    separator_style = 'padded_slant',
    diagnostics = 'nvim_lsp',
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      }
    }
  }
})

-- Airline
require('lualine').setup({
  icons_enabled = true,
  theme = 'auto',
})

-- Filetree
require("nvim-tree").setup({})
-- Open nvim tree on startup
local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end
--vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- Fuzzy finder
require('telescope').setup({})

