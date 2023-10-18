local lspconfig = require('lspconfig')
-- lspconfig.pyright.setup {} -- pyright consumes massive CPU all the time
lspconfig.pylsp.setup {}
