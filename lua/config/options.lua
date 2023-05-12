vim.g.mapleader = " "

vim.cmd("set fillchars=fold:\\ ,vert:\\│,eob:\\ ,msgsep:‾")

local options = {
    clipboard = "unnamedplus", -- Enable yanking to clipboard
    confirm = true, -- Confirm changes on leaving unwritten buffer
    list = true, -- Displays various trailing whitespace characters while inserting
    fileencoding = "utf-8",
    linespace = 3, -- Vertical linespace between lines
    number = true,
    relativenumber = true,
    showmode = false, -- Hide the current mode (normally displayed below status line)
    scrolloff = 8,
    signcolumn = "number",
    spelllang = { "en_us", "cjk" },
    termguicolors = true,
    wrap = true,

    -- Default indentation
    expandtab = true,
    tabstop = 8,
    softtabstop = 0,
    shiftwidth = 4,
    autoindent = true,
}

-- Helper function to enable each of the options supplied in the argument
-- @param options Table that consists of key value vim options
local function set_options(options)
    local option = vim.opt

    for option_name, option_value in pairs(options) do
        option[option_name] = option_value
    end
end
set_options(options)

vim.api.nvim_set_keymap("n", "<Leader>p", ":echo expand('%:p')<CR>", { noremap = true })
