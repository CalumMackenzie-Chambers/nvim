-- start and end of line
vim.keymap.set("n", "H", "^", { desc = "Go to end of line" })
vim.keymap.set("v", "H", "^", { desc = "Go to start of line" })
vim.keymap.set("n", "L", "g_", { desc = "Go to end of line" })
vim.keymap.set("v", "L", "g_", { desc = "Go to end of line" })

-- don't exit visual mode when indenting
vim.keymap.set("v", "<", "<gv", { desc = "Indent right one level" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent left one level" })

-- paste / yank / delete maps
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- unset things
vim.keymap.set("n", "<A-j>", "")
vim.keymap.set("v", "<A-j>", "")
vim.keymap.set("i", "<A-j>", "")
vim.keymap.set("n", "<A-k>", "")
vim.keymap.set("v", "<A-k>", "")
vim.keymap.set("i", "<A-k>", "")
