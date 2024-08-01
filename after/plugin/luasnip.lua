local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require('luasnip.extras.fmt').fmt

ls.config.set_config({
    -- keep the last snippet around so we can jump back into it:
    history = true,

    update_events = 'TextChanged,TextChangedI',
    enable_autosnippets = true,
})

ls.add_snippets('all', {
    -- available in any filetype
    -- shebang
    s('#!', fmt(
        [[#!/usr/bin/env python]] .. '\n' ..
        [["""]] .. '\n' ..
        [["""]], {})
    ),
})

ls.add_snippets('python', {
    -- python function:
    -- trigger is "def":
	s('def', {
		t({ 'def ' }),
		-- placeholder for function's name (with initial text):
		i(1, 'function_name'),
		t('('),
		-- Placeholder for arguments (with initial text):
		i(2, 'arg1: int'),
		-- type hint for return value:
		t({ ') -> ' }),
        i(3, 'int'),
        t({ ':', '' }),
		-- docstring:
		t({ '\t"""', '\t' }),
        -- later, we may do some automatic docstring magic here
        t({ '', '\t"""', '', '\t' }),
		-- Last placeholder, for function body. Exit point of the snippet.
		i(0),
	}),
})

ls.add_snippets('rst', {
    -- figure:
    -- trigger is ".. figure::":
	s('.. figure::', {
		t({ '.. figure:: ' }),
		-- placeholder for filename (with initial text):
		i(1, 'filename'),
		t({ '', '    :alt: ' }),
		-- Placeholder for alternate text (with initial text):
		i(2, '<alternate text>'),
		-- width:
		t({ '', '    :width: 80%', '', '    ' }),
        -- caption (with initial text)::
        i(0, '<caption>'),
        t({ '', '' }),
	}),
})
