require'mason-lspconfig'.setup()

-- C/C++
require'lspconfig'.clangd.setup{}

-- C#
require'lspconfig'.csharp_ls.setup{}

-- D
require'lspconfig'.serve_d.setup{}

