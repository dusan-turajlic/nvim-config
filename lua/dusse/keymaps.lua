local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<M-Left>", "<C-w>h", opts) -- left
keymap("n", "<M-Down>", "<C-w>j", opts) -- down
keymap("n", "<M-Up>", "<C-w>k", opts) -- up
keymap("n", "<M-Right>", "<C-w>l", opts) -- right

keymap("n", "<S-Z>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<cr>", opts)
keymap("n", "<D-s>", ":w<cr>", opts)

-- Resize with arrows
keymap("n", "<S-k>", ":resize +2<CR>", opts)
keymap("n", "<S-j>", ":resize -2<CR>", opts)
keymap("n", "<S-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-l>", ":vertical resize +2<CR>", opts)

-- Insert
keymap("i", "<D-s>", ":w<cr>", opts)

-- Navigate buffers
keymap("n", "<S-w>", ":bnext<CR>", opts)
keymap("n", "<S-q>", ":bprevious<CR>", opts)

-- Qucik find files
keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown())<cr>",
  opts)
keymap("n", "<C-F>", "<cmd>Telescope live_grep<cr>", opts)

-- Gitsigns
keymap("n", "<C-b>", "<cmd>Gitsigns blame_line<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-Up>", ":m .-2<CR>==", opts)
keymap("v", "<S-Down>", ":m .+1<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<S-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<S-Up>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<S-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<M-Left>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<M-Down>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<M-Up>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<M-Right>", "<C-\\><C-N><C-w>l", term_opts)
