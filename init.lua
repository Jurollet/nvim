local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup("plugins")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "120"

vim.opt.swapfile = false

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-t>", "<C-o>zz")
vim.keymap.set("n", "<C-s>", "<C-i>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank in pastebin" }) -- normal mode
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank in pastebin" }) -- visual mode

vim.keymap.set("n", "<Leader>c", [[:%s/<C-r><C-w>//g<Left><Left>]], { desc = "Change word" })
vim.keymap.set("v", "<Leader>c", "\"vy:%s/<C-R>v//g<Left><Left>", { desc = "Change word" })

vim.keymap.set("n", "wc", "<C-W>h")
vim.keymap.set("n", "wt", "<C-W>j")
vim.keymap.set("n", "ws", "<C-W>k")
vim.keymap.set("n", "wr", "<C-W>l")
vim.keymap.set("n", "<leader>wc", "<C-W>C")
vim.keymap.set("n", "<leader>wt", "<C-W>J")
vim.keymap.set("n", "<leader>ws", "<C-W>S")
vim.keymap.set("n", "<leader>wg", vim.cmd.split)
vim.keymap.set("n", "<leader>wh", vim.cmd.vsplit)

vim.diagnostic.config({
    severity_sort = true,
    float = {
        source = "if_many",
    },
})

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.INFO] = "󰋼 ",
            [vim.diagnostic.severity.HINT] = "󰌵 ",
        },
        texthl = {
            [vim.diagnostic.severity.ERROR] = "Error",
            [vim.diagnostic.severity.WARN] = "Warn",
            [vim.diagnostic.severity.HINT] = "Hint",
            [vim.diagnostic.severity.INFO] = "Info",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "Error",
            [vim.diagnostic.severity.WARN] = "Warn",
            [vim.diagnostic.severity.HINT] = "Hint",
            [vim.diagnostic.severity.INFO] = "Info",
        },
    },
})
