local opts = {noremap = true, silent = true}

require("color-picker").setup({
    ["icons"] = {"ﱢ", ""},
    ["border"] = "rounded",
    ["keymap"] = {
        ["U"] = "<Plug>ColorPickerSlider5Decrease",
        ["O"] = "<Plug>ColorPickerSlider5Increase"
    },
    ["background_highlight_group"] = "Normal",
    ["border_highlight_group"] = "FloatBorder",
    ["text_highlight_group"] = "Normal"
})

vim.cmd([[hi FloatBorder guibg=NONE]])
