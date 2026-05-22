require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",
  "yamlls",
  "dockerls",
  "jsonls",
  "bashls",
  "terraformls",
  "lua_ls",
}
vim.lsp.enable(servers)

vim.lsp.config("terraformls", {
  settings = {
    terraform = {
      experimentalFeatures = {
        tofu = true,
      },
    },
  },
})
