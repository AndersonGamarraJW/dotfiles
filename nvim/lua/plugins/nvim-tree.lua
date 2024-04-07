return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.opt.termguicolors = true
		require("nvim-tree").setup({
			sort_by = "case_sensitive",
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
				icons = {
					web_devicons = {
						file = {
							enable = true,
							color = true,
						},
						folder = {
							enable = true,
							color = true,
						},
					},
				},
			},
			filters = {
				dotfiles = false,
				git_ignored = false,
			},
		})
		-- Nvim Web Icons Config
		require("nvim-web-devicons").setup({
			override_by_filename = {
				[".gitignore"] = {
					icon = "",
					color = "#f1502f",
					name = "Gitignore",
				},
				["git"] = {
					icon = "",
				},
				[".eslintrc.js"] = {
					icon = "󰱺",
				},
			},
			color_icons = true,
			default = true,
			strict = false,
		})
		--keymapping
		vim.api.nvim_set_keymap("n", "n", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
	end,
}
