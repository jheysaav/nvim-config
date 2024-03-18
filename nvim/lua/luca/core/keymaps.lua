local maps = {
  -- Basic
  ["<leader>w"] = function()
    vim.cmd([[w]])
  end,
  ["<leader>ww"] = function()
    vim.cmd([[w!]])
  end,
  ["<leader>q"] = function()
    vim.cmd([[q]])
  end,
  ["<leader>qq"] = function()
    vim.cmd([[q!]])
  end,

  -- Movements
  ["<C-left>"] = function()
    vim.cmd([[wincmd h]])
  end,
  ["<C-right>"] = function()
    vim.cmd([[wincmd l]])
  end,
  ["<C-up>"] = function()
    vim.cmd([[wincmd k]])
  end,
  ["<C-down>"] = function()
    vim.cmd([[wincmd j]])
  end,

  -- Buffers
  ["<leader>bd"] = function()
    vim.cmd([[bdelete]])
  end,
  ["<leader><Tab>"] = function()
    vim.cmd([[bnext]])
  end,

  -- Lsp
  ["<leader>d"] = vim.lsp.buf.definition,
  ["<leader>D"] = vim.lsp.buf.declaration,
  ["<leader>i"] = vim.lsp.buf.implementation,
  ["<leader>f"] = function()
    vim.lsp.buf.format({ async = true })
  end,
}

vim.g.mapleader = " "

for k, v in pairs(maps) do
  vim.keymap.set("n", k, v, { silent = true, noremap = true })
end
