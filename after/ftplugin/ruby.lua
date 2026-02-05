-- ┌────────────────────┐
-- │ Ruby configuration │
-- └────────────────────┘
--
-- Filetype-specific configuration for Ruby files

-- Ruby/RSpec specific test keymaps
vim.keymap.set("n", "<leader>cg", function()
  require("neotest").run.run({
    suite = false,
    extra_args = { "--format", "documentation" }
  })
end, { buffer = true, desc = "Run RSpec with doc format" })
