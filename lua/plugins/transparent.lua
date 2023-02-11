return {
    "xiyaowong/nvim-transparent",
    init = function ()
        local transparent = require "transparent".setup {
            enable = true,
        }
    end
}
