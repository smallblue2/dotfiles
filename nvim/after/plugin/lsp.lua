local lsp = require("lsp-zero")
local cmp = require('cmp')

lsp.preset("recommended")

lsp.ensure_installed({
    'rust_analyzer',
    'pylsp',
    'lua_ls'
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

-- Custom keymaps for autocomplete
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-l>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

-- Ensure Shift-Tab does nothing
cmp_mappings['<S-Tab>'] = nil

-- Set up our custom cmp keymaps
lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

-- Some preference configs
lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

-- When LSP attaches, use these keybinds
-- This is so we use vim's built-in keymaps for this functionality
-- But if LSP is attached, we use LSP
lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  --vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "dj", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "dk", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  --vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "<leader>F", function() vim.lsp.buf.format() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
