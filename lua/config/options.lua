-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

local opt = vim.opt

opt.cmdheight = 0
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.guicursor = ""
opt.colorcolumn = "80"

opt.shiftwidth = 4
opt.tabstop = 4

opt.writebackup = false
opt.swapfile = false

vim.g.python3_host_prog = "/Users/calum/.pyenv/versions/3.10.6/bin/python3.10"
