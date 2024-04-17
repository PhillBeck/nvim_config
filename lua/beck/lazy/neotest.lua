return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "olimorris/neotest-rspec",
        "jfpedroza/neotest-elixir",
  },
  config = function()
    local neotest = require("neotest")
    neotest.setup({
      adapters = {
        require("neotest-rspec"),
        require("neotest-elixir"),
      },
    })

   vim.keymap.set('n', '<leader>kr', neotest.run.run)
   vim.keymap.set('n', '<leader>ks', neotest.summary.toggle)
   vim.keymap.set('n', '<leader>ko', function() neotest.output.open({ enter = true }) end)
   vim.keymap.set('n', '<leader>kf', function() neotest.run.run(vim.fn.expand('%')) end)
   vim.keymap.set('n', '<leader>kk', function() neotest.run.run({ suite = true }) end)
  end
}
