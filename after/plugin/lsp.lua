local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
end)

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {'pylsp', 'lua_ls'},
    handlers = {
        require('lsp-zero').default_setup,
    },
})
