local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Add a file to harpoon
vim.keymap.set("n", "<leader>m", mark.add_file)
-- Open the visual menu
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

-- Cycle to the next file
vim.keymap.set("n", "<leader>j", ui.nav_next)
-- Cycle to the previous file
vim.keymap.set("n", "<leader>k", ui.nav_prev)
