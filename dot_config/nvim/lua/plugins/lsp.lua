-- LSP server configuration
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        gopls = {},
        ts_ls = {},
        lua_ls = {},
        terraformls = {},
        ansiblels = {},
        rust_analyzer = {},
      },
    },
  },
}
