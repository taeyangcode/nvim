return {
    "nvim-tree/nvim-tree.lua",
    module = true,
    cmd = {
      "NvimTreeOpen",
      "NvimTreeToggle",
      "NvimTreeFocus",
      "NvimTreeFindFile",
      "NvimTreeFindFileToggle",
    },
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    init = function()
        local nvim_tree = require "nvim-tree"

        nvim_tree.setup {
          disable_netrw = true,
          auto_reload_on_write = true,
          hijack_cursor = true,
        }
    end,
}
