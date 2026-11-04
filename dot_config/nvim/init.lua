local o = vim.opt
o.clipboard = "unnamedplus"
o.number, o.relativenumber = true, true
o.ignorecase, o.smartcase = true, true
o.scrolloff = 8
o.splitright, o.splitbelow = true, true
o.expandtab, o.shiftwidth, tabstop = true, 4, 4
o.list = true
o.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
o.confirm = true

for _, key in ipairs({ "j", "<Down>" }) do
    vim.keymap.set({ "n", "x" }, key, "gj")
end
for _, key in ipairs({ "k", "<Up>" }) do
    vim.keymap.set({ "n", "x" }, key, "gk")
end
