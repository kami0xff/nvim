require('rose-pine').setup({
    variant = 'main',
    disable_background = true,
    disable_italics = true,
})


require("everforest").setup({
  background = "soft",
  transparent_background_level = 2,
  italics = false,
  disable_italic_comments = false,
})

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
