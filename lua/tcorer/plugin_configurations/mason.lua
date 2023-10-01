require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"rust_analyzer",
		"clangd",
		"pylsp",
		"jedi_language_server",
		"dockerls",
		"docker_compose_language_service",
		"bashls",
	},
})
