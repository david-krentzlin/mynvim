-- ┌────────────────────┐
-- │ Rust configuration │
-- └────────────────────┘
--
-- Filetype-specific configuration for Rust files

-- Rust-specific test keymaps
vim.keymap.set("n", "<leader>cg", function()
  require("neotest").run.run({
    suite = false,
    extra_args = { "--", "--nocapture" }
  })
end, { buffer = true, desc = "Run test with output" })
