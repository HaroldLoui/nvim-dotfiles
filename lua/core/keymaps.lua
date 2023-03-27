vim.g.mapleader = " "

local keymap = vim.keymap

-- ----------- 插入模式 ------------
keymap.set("i", "jk", "<ESC>")

-- ----------- 视觉模式 ------------
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ----------- 正常模式 ------------
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- ----------- 插件 ---------------
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- 切换buffer
keymap.set("n", "<leader>r", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")
keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")
keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>")
keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>")
keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>")
keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>")
keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>")
keymap.set("n", "<leader>$", ":BufferLineGoToBuffer -1<CR>")

-- outline
keymap.set("n", "<leader>o", ":SymbolsOutline<CR>")
