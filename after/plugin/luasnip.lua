local ls = require('luasnip')
local s = ls.snippet
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

ls.config.set_config({
    -- keep the last snippet around so we can jump back into it:
    history = true,

    update_events = 'TextChanged,TextChangedI',
    enable_autosnippets = true,
})

ls.add_snippets('all', {
    -- shebang:
    s({trig = '#!'},
      fmt(
        [[
            #!/usr/bin/env python
            """
            """
        ]],
        {})
    ),
})

ls.add_snippets('python', {
    -- python function:
    s({trig = 'def'},
      fmt(
        [[
            def {}({}) -> {}:
                """
                """

                {}
        ]],
        {i(1, 'function_name'), i(2, 'arg1: int'), i(3, 'int'), i(0, 'pass')})
    ),
})

ls.add_snippets('rst', {
    -- figure:
    s({trig = 'fig'},
      fmt(
        [[
        .. figure:: {}
            :alt: {}
            :width: 80%

            {}
        ]],
        {i(1, 'filename'), i(2, '<alternate text>'), i(0, '<caption>')})
    ),
})
