vim = vim or { api = {} }
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
    },
}
