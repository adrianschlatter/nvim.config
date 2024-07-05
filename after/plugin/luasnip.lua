local snip = require('luasnip')
local s = snip.snippet
local fmt = require('luasnip.extras.fmt').fmt

snip.config.set_config({
    -- keep the last snippet around so we can jump back into it:
    history = true,

    update_events = 'TextChanged,TextChangedI',
    enable_autosnippets = true,
})

snip.add_snippets('all', {
    -- available in any filetype

    -- shebang
    s('#!', fmt(
        [[#!/usr/bin/env python]] .. '\n' ..
        [["""]] .. '\n' ..
        [["""]], {})
    ),
})
