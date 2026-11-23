local o = vim.opt
o.clipboard = "unnamedplus"
o.number, o.relativenumber = true, true
o.ignorecase, o.smartcase = true, true
o.scrolloff = 7
o.splitright, o.splitbelow = true, true
o.expandtab, o.shiftwidth, tabstop = true, 4, 4
o.list = true
o.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
o.confirm = true
o.keymodel = "startsel,stopsel"
o.cursorline = true
o.cursorlineopt = "number"
o.statuscolumn = " %s%=%{v:relnum?v:relnum:v:lnum} "

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "yellow" } )

for _, key in ipairs({ "j", "<Down>" }) do
    vim.keymap.set({ "n", "x" }, key, "gj")
end
for _, key in ipairs({ "k", "<Up>" }) do
    vim.keymap.set({ "n", "x" }, key, "gk")
end

vim.pack.add({
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
})
require("plugins.lualine")
