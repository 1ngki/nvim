local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({
  ui = {
    border = "rounded",
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

lspconfig.setup {
  ensure_installed = { "bashls", "html", "cssls", "emmet_ls", "eslint", "jsonls", "tsserver", "sumneko_lua", "vimls" },
}