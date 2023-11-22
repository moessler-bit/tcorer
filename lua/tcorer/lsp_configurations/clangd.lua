require("lspconfig").clangd.setup {
    cmd = {
        "clangd",
        "-fallback-style=gnu",
    }
}
