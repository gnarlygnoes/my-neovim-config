-- Basic Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.wrap = true
vim.opt.cmdheight = 1
vim.opt.spelllang = { "en", "de" }

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.smartindent= true
vim.opt.autoindent = true

vim.opt.grepprg = "rg --vimgrep"
vim.opt.grepformat = "%f:%l:%c:%m"


-- Search Settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Visual Settings
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.colorcolumn = "100"
vim.opt.showmatch = true
vim.opt.matchtime = 0
vim.opt.completeopt = "menuone,noselect"
vim.opt.showmode = false
vim.opt.pumheight = 10
vim.pumblend = 10
vim.winblend = 0
vim.opt.conceallevel = 0
vim.opt.concealcursor = ""
vim.opt.lazyredraw = false
vim.opt.redrawtime = 10000
vim.opt.maxmempattern = 20000
vim.opt.synmaxcol = 300

-- File Handling
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.ttimeoutlen = 0
vim.opt.autoread = true
vim.opt.autowrite = false
vim.opt.diffopt:append("vertical")
vim.opt.diffopt:append("algorithm:patience")
vim.opt.diffopt:append("linematch:60")

-- Set undo dir
local undodir = "~/.local/share/nvim/undodir"
vim.opt.undodir = vim.fn.expand(undodir)
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
	vim.fn.mkdir(undodir_path, "p")
end

-- Behaviour Settings
vim.opt.errorbells = false
vim.opt.backspace = "indent,eol,start"
vim.opt.autochdir = false
vim.opt.iskeyword:append("-")
vim.opt.path:append("**")
vim.opt.selection = "inclusive"
vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")
vim.opt.modifiable = true
vim.opt.encoding = "UTF-8"
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"
vim.opt.wildignorecase = true

-- Cursor Settings
vim.opt.guicursor = {
	"n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:block-blinkon500-blinkoff500-TermCursor" -- default
}

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.splitbelow = true
vim.opt.splitright = true
