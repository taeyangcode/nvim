return {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
        local lspsaga = require "lspsaga"
        lspsaga.setup {}
    end,
}
