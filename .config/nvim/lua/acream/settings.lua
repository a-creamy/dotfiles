vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.o.cmdheight = 0

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        if vim.bo.buftype == "" then
            vim.opt.statuscolumn = "%=%{v:relnum > 0 ? v:relnum : v:lnum} "
        else
            vim.opt.statuscolumn = ""
        end
    end
})

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", function()
    Snacks.picker.files()
end)

vim.keymap.set("n", "<leader>fg", function()
    Snacks.picker.grep()
end)

vim.keymap.set("n", "<leader>fr", function()
    Snacks.picker.recent()
end)

vim.keymap.set("n", "<leader>e", function()
    Snacks.explorer()
end)
