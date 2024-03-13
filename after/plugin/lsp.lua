local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)
lsp.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'elixirls'},
	handlers = {
		lsp.default_setup,
	}
})
