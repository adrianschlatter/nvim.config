-- keymaps:
vim.keymap.set('n', '<leader>db', vim.cmd.DapToggleBreakpoint)
vim.keymap.set('n', '<leader>dB', ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
vim.keymap.set('n', '<leader>dc', vim.cmd.DapContinue)
vim.keymap.set('n', '<leader>ds', vim.cmd.DapStepOver)
vim.keymap.set('n', '<leader>di', vim.cmd.DapStepInto)
vim.keymap.set('n', '<leader>do', vim.cmd.DapStepOut)
