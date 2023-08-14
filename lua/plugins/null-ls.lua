return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function(_, opts)
    local nls = require("null-ls")
    nls.setup()
  end,
}
