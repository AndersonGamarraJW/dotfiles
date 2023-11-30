return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		{ "tpope/vim-dadbod", lazy = true },
		{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
	},
	cmd = {
		"DBUI",
		"DBUIToggle",
		"DBUIAddConnection",
		"DBUIFindBuffer",
	},
	init = function()
		-- Your DBUI configuration
		vim.g.db_ui_use_nerd_fonts = 1
		vim.g.dbs = {
			--Ejemplo para agregar variables para acceso a
			--dev = "postgres://postgres:mypassword@localhost:5432/my-dev-db",
			postgretest = "postgres:test",
			--wp = "mysql://root@localhost/wp_awesome",
		}
		vim.g.db_ui_save_location = "~/Documents/QuerysDatabase/"
		-- Keymap
		vim.api.nvim_set_keymap("n", "o", "<Plug>(DBUI_SaveQuery)", { noremap = true, silent = true })
	end,
}
