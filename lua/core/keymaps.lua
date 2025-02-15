-- local map = vim.api.nvim_set_keymap
-- default_options = { noremap = true, silent = true }
-- expr_options = { noremap = true, expr = true, silent = true }
--
-- vim.g.mapleader = " "
--
-- -- better indenting
-- map("v", "<", "<gv", default_options)
-- map("v", ">", ">gv", default_options)
--
-- -- paste over currently selected text without yanking it
-- map("v", "p", '"_dP', default_options)
--
-- -- Cancel search highlighting with ESC
-- map("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_options)
--
-- -- Resizing panes
-- map("n", "<Left>", ":vertical resize +1<CR>", default_options)
-- map("n", "<Right>", ":vertical resize -1<CR>", default_options)
-- map("n", "<Up>", ":resize -1<CR>", default_options)
-- map("n", "<Down>", ":resize +1<CR>", default_options)
--
-- -- Autocorrect spelling from previous error
-- map("i", "<C-f>", "<C-g>u<Esc>[s1z=`]a<C-g>u", default_options)
--
-- -- Move selected line / block of text in visual mode
-- map("x", "K", ":move '<-2<CR>gv-gv", default_options)
-- map("x", "J", ":move '>+1<CR>gv-gv", default_options)

local vk = vim.keymap
-- vk.set({ "n", "c" }, "xx", "<cmd>confirm quitall<cr>")
vk.set({ "n" }, "<esc>", "<cmd>nohlsearch<cr>")
vk.set({ "c" }, "xx", "<cmd>confirm quitall<CR>")

-- Small editor tweaks
vk.set("i", "<C-l>", "<Right>")

-- Buffers
vk.set("n", "<tab>", "<cmd>Telescope buffers<cr>")

-- Code

-- Open
vk.set("n", "<leader>ol", "<cmd>Lazy<cr>")
vk.set("n", "<leader>oT", "<cmd>InspectTree<cr><C-w>=")

-- Toggle
vk.set("n", "<leader>ts", "<cmd>set list!<cr>", { desc = "Toggle whitespace characters" })
vk.set("n", "<leader>tf", "<cmd>lua require('core.utils').formatter:toggle()<cr>", { desc = "Toggle formatter" })

-- Help
vk.set("n", "<leader>hh", "<cmd>Telescope help_tags<cr>")
vk.set("n", "<leader>hH", "<cmd>checkhealth<cr>")
vk.set("n", "<leader>hr", "<cmd>Telescope reloader<cr>")
vk.set("n", "<leader>ht", "<cmd>Inspect<cr>")

-- Windows
for i = 1, 6 do
	vk.set("n", "<leader>" .. i, i .. "<C-w>w", { desc = "Move to Window " .. i .. " (wk-ignore)" })
	vk.set("n", "<leader>w" .. i, "<cmd>" .. i .. "hide<cr>", { desc = "Close Window " .. i .. " (wk-ignore)" })
end

vk.set("n", "<leader>ww", "<C-w><C-w>", {})
vk.set("n", "<leader>w\\", "<cmd>vsplit<cr>", {})
vk.set("n", "<leader>w-", "<cmd>split<cr>", {})
vk.set("n", "<leader>w=", "<C-w>=", {})
vk.set("n", "<leader>wd", "<cmd>:q<cr>", {})

-- Movement
--
vk.set("n", "<C-d>", "<C-d>zz", {})
vk.set("n", "<C-u>", "<C-u>zz", {})
