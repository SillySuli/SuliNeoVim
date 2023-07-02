vim.g.mapleader = "|"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Automatically moove line up and down when highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<+2<CR>gv=gv")

-- when doing 'J' now the cursor stays in place
vim.keymap.set("n", "J", "mzJ`z")

-- control d & u which is half page jumping, now the cursor is in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Allows cursor to stay in the middle, when doing a search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without coping the new deleted item/items.
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copying onto the system clipborad
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- deleting to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- This is a small opitmization in visual block mode
-- vim.kepma.set("i","C-c", "<Esc>")

-- pressing control f and switch projects
-- Once you have entered the new project, pressing cotrol aL will got back.
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- replace all the word that match the word you are currently on
vim.keymap.set("n", "<leader>s", [[:%s\//<<C-r><C-w>\\>/<C-r><C-w>/gT<Left><Left><Left>]])
 
-- making it the current file into an executable
vim.keymap.set("n", "<leader>ex", "<cmd>!cmod +x %<CR>", {silent = true})

-- remap so command
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
