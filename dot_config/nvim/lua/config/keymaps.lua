-- Custom keymaps — carried forward and modernized
local map = vim.keymap.set

-- Clear search highlighting (Esc Esc)
map("n", "<Esc><Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- JSON pretty print
map("n", "<leader>j", "<cmd>%!jq .<CR>", { desc = "Format JSON" })

-- Remove trailing whitespace
map("n", "<leader>W", "<cmd>%s/\\s\\+$//e<CR>", { desc = "Remove trailing whitespace" })

-- Better window navigation (supplement vim-tmux-navigator)
map("n", "<leader>z", "<cmd>wincmd _<CR><cmd>wincmd |<CR>", { desc = "Zoom current split" })
map("n", "<leader>Z", "<cmd>wincmd =<CR>", { desc = "Restore split sizes" })

-- Quick save
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- Move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Keep cursor centered on half-page jumps
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Keep search results centered
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
