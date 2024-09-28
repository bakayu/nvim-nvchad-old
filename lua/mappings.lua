require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- nvim dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "add breakpoint at the current line" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "start or continue the debugger" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
