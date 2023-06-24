require("catppuccin").setup({
	flavour = "mocha",
	background = {
		light = "latte",
		dark = "mocha",
	},
	dim_inactive = {
		enabled = true,
		shade = "light",
		percentage = 0.25,
	},
	styles = {
		comments = { "italic" },
	},
})

vim.cmd.colorscheme("catppuccin")
