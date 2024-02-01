local iron = require("iron.core")

iron.setup {
    config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
            sh = {
                -- Can be a table or a function that
                -- returns a table (see below)
                command = { "zsh" }
            },
            python = {
                command = { "ipython" },
                format = require("iron.fts.common").bracketed_paste,
            },
        },
        -- How the repl window will be displayed
        -- See below for more information
        repl_open_cmd = require('iron.view').right(80),
    },
    -- Iron doesn't set keymaps by default anymore.
    -- You can set them here or manually add keymaps to the functions in iron.core
    keymaps = {
        send_motion = "<leader>is",
        visual_send = "<leader>is",
        send_file = "<leader>if",
        send_line = "<leader>il",
        interrupt = "<leader>ii",
        exit = "<leader>iq",
        clear = "<leader>ic",
    },
    ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

-- iron also has a list of commands, see :h iron-commands for all available commands
vim.keymap.set('n', '<leader>irs', '<cmd>IronRepl<cr>')
vim.keymap.set('n', '<leader>irr', '<cmd>IronRestart<cr>')
vim.keymap.set('n', '<leader>irf', '<cmd>IronFocus<cr>')
vim.keymap.set('n', '<leader>irh', '<cmd>IronHide<cr>')
