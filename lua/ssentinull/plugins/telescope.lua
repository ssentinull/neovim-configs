local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["<C-j>"] = actions.move_selection_next,
				["<C-s>"] = actions.select_vertical,
				["<C-h>"] = actions.select_horizontal,
				["<Tab>"] = actions.file_tab,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
	},
	pickers = {
		find_files = {
			theme = "dropdown",
			layout_config = {
				width = 0.65,
			},
		},
		live_grep = {
			theme = "dropdown",
			layout_config = {
				width = 0.65,
			},
		},
		grep_string = {
			theme = "dropdown",
			layout_config = {
				width = 0.65,
			},
		},
	},
})

telescope.load_extension("fzf")
