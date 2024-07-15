vim.cmd("colorscheme habamax")
-- Global variables to be used
border = "rounded"
---@diagnostic disable-next-line: lowercase-global
icons = require("core.icons")
utils = require("core.utils")
math.randomseed(os.time())
dashboard_or_alpha = math.random() < 0.5

require("core.options")
require('lsp/lspconfig')
require("core/autocmds")
require('core/keymaps')
require('core/options')

require('plugins/nvim-tree')


lang = require("lang")

-- Plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
   "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end


vim.opt.rtp:prepend(lazypath)


local opts = {
  ui = {
    border = border or "rounded",
    icons = icons.ui.lazy,
  },
	performance = {
    rtp = {
      disablesabled_plugins = {
      },
    },
  },


change_detection = { enabled = false },
  defaults = {
    lazy = true,
  },
install = {
    colorscheme = { -- Will try to load the themes if available in this order
      "tokyodark",
      "material",
      "tokyonight",
      "catppuccin",
      "habamax",
    },
  },
}

require("lazy").setup({
  { import = "plugins" },
  { import = "plugins.languages" },
  { import = "plugins.themes" },
}, opts) -- importing will allow to have all the files in the dir as plugin

vim.keymap.set("n", "<leader>iL", "<cmd>Lazy<CR>", { noremap = true, silent = true })

vim.cmd([[ silent! colorscheme tokyodark ]]) -- set's colorscheme silently so if it doesn't exists it doesn't throw an error
