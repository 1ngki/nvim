local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup ({
  sources = {
    null_ls.builtins.diagnostics.tidy,
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.formatting.prettierd
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.format{ async = true }")
    end
  end,
})