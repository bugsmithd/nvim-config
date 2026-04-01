-- lua/custom/ui_enhancements.lua

-- Rounded LSP floating windows
vim.lsp.handlers["textDocument/hover"] = function(err, result, ctx, config)
  config = vim.tbl_deep_extend("force", config or {}, { border = "rounded" })
  vim.lsp.handlers.hover(err, result, ctx, config)
end

vim.lsp.handlers["textDocument/signatureHelp"] = function(err, result, ctx, config)
  config = vim.tbl_deep_extend("force", config or {}, { border = "rounded" })
  vim.lsp.handlers.signature_help(err, result, ctx, config)
end

-- Diagnostics: quieter virtual text + rounded borders
vim.diagnostic.config({
  float = { border = "rounded" },
  virtual_text = {
    spacing = 2,
    prefix = "●",
  },
  underline = true,
  signs = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Global UI tweaks
vim.opt.laststatus   = 3
vim.opt.cmdheight    = 0
vim.opt.sidescrolloff = 8
vim.opt.conceallevel = 2
vim.opt.splitkeep    = "screen"
vim.opt.inccommand   = "split"

vim.opt.fillchars:append({
  fold    = " ",
  eob     = " ",
  diff    = "╱",
  msgsep  = " ",
  vert    = "│",
})

vim.opt.pumblend = 10
vim.opt.winblend = 0