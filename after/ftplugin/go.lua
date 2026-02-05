-- ┌──────────────────┐
-- │ Go configuration │
-- └──────────────────┘
--
-- Filetype-specific configuration for Go files

-- Go-specific test keymaps
-- These extend the global neotest keymaps with Go-specific options
vim.keymap.set("n", "<leader>cg", function()
  require("neotest").run.run({
    suite = false,
    extra_args = { "-v" }
  })
end, { buffer = true, desc = "Run test with verbose" })
