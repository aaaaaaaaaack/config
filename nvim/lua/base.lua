vim.cmd('autocmd!')
--

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.guicursor = ""
vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.title = true

vim.wo.number = true
vim.opt.relativenumber = true
vim.opt.smartindent = true

vim.opt.undodir = os.getenv("HOME") .. "/.undo/dir"
vim.opt.undofile = true

-- vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.ai = true -- auto indent
vim.opt.si = true -- smart indent
vim.opt.wrap = true
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- finding files

vim.opt.hlsearch = false
vim.opt.incsearch = true


vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 8

-- Undercul
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])


vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = '*',
    command = "set nopaste"
})

vim.opt.formatoptions:append { 'r' }

--
vim.opt.list = true
