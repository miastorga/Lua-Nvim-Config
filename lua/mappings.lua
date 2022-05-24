local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('','<Space>','<Nop>',opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Modes
--   insert_mode = "i",
--   normal_mode = "n",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

map('i','kj','<ESC>',opts)
map('n','<leader>nh',':noh<CR>',opts)

-- normal_mode
-- Mejor navegacion por ventanas
map('n','<C-h>','<C-w>h',opts)
map('n','<C-l>','<C-w>l',opts)
map('n','<C-j>','<C-w>j',opts)
map('n','<C-k>','<C-w>k',opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- mover text up and down
map("n", "<A-k>", ":<ESC>:m .-2<CR>==gi", opts)
map("n", "<A-j>", ":<ESC>:m .+1<CR>==gi", opts)

-- Open NvimTree
map('n', '<leader>e',':NvimTreeToggle<CR>',opts)

-- Toggle Terminal
-- map('n','<leader>t',':ToggleTerm<CR>',opts)

-- Toggle telescope find file
map('n','<leader>ff','<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({previewer = false}))<cr>',opts)

-- navigate buffers
map("n", "<S-h>", ":bNext<CR>", opts)
map("n", "<S-l>", ":bnext<CR>", opts)

-- Visual --
-- Stay in indent mode
-- Tabuladores
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("v", "<A-j>", ":m .+1<CR>==", opts)
map("v", "<A-k>", ":m .-2<CR>==", opts)
map("v", "p", '"_dP', opts)

-- Visual block
-- move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
