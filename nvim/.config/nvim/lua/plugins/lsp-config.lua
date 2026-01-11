return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",

          },
        },
      })
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "ts_ls",
      }
    }
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {} )
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
      -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, {})
      -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, {})
      -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, {})
      -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
      -- vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            -- Lua
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      -- TypeScript / JavaScript
      vim.lsp.config("ts_ls", {})
    end,
  },

--  {
--    "hrsh7th/cmp-nvim-lsp",
--    event = { "BufReadPre", "BufNewFile" },
--    config = function()
--      local cmp_nvim_lsp = require("cmp_nvim_lsp")
--      local capabilities = cmp_nvim_lsp.default_capabilities()
--
--      vim.lsp.config("*", {
--        capabilities = capabilities,
--      })
--    end,
--  }
}
