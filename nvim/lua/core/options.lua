local opt = vim.opt
local o = vim.o
local g = vim.g

g.mapleader = " "

-- Clipboard sync with System
opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.cursorlineopt = "number"

-- disabling the startup screen
opt.shortmess:append("sI")
vim.go.statusline = "%#Normal#"

opt.pumblend = 0
opt.pumheight = 10

-- Indentation
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.cmdheight = 0

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "screen"
opt.termguicolors = true
opt.timeoutlen = 400

-- concelaing
opt.conceallevel = 2

opt.undofile = true

opt.wrap = false

opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }

opt.smartindent = true
opt.spelllang = { "en" }

opt.virtualedit = "block"
opt.winminwidth = 5

opt.fileencoding = "utf-8"

opt.list = true

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 550

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")

opt.listchars:append("space:·")

vim.g.floating_window_options = {
  border = border or "rounded",
  winblend = 10,
}

-- Example for configuring Neovim to load user-installed installed Lua rocks:
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

-- options for neovide
vim.g.neovide_cursor_trail_length = 0.05
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_transparency = 0.8

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true           -- Show line number
opt.showmatch = true        -- Highlight matching parenthesis
opt.foldmethod = 'marker'   -- Enable folding (default 'foldmarker')
opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true    -- Enable 24-bit RGB colors
opt.laststatus=3            -- Set global statusline

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"


-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
