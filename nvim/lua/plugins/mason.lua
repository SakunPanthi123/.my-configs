return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    'saghen/blink.cmp',
  },
  config = function()
    local mason = require("mason")
    mason.setup({})

    local mason_lspconfig = require("mason-lspconfig")
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    mason_lspconfig.setup({
      automatic_installation = true,
      handlers = {
        function(server_name)
          vim.lsp.config({ capabilities = capabilities });
        end,
      }
    })
  end,
}
