return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    local lspconfig = require("lspconfig")
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    lspconfig.sorbet.setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        -- 必要に応じてカスタムのon_attach設定を追加
      end,
      root_dir = lspconfig.util.root_pattern("Gemfile", ".git"),
    })
  end,
}
