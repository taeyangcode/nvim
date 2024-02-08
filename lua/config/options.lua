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
    expandtab = false,
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

local function open_tex_pdf()
    local path = vim.api.nvim_exec([[ echo expand('%:p') ]], true)
    for index = string.len(path), 1, -1 do
        if string.sub(path, index, index) == "." then
            local pdf = string.sub(path, 0, index).."pdf"
            vim.fn.jobstart("zathura " .. pdf .. " && beep")
            return
        end
    end
    print("Could not locate file path.")
end

vim.api.nvim_set_keymap("n", "<Leader>p", "", {
    callback = open_tex_pdf,
    noremap = true
})

vim.keymap.set("n", "<C-f>", ":lua MiniFiles.open()<CR>", { noremap = true, silent = true })
