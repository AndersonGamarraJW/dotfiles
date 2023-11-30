return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		local wk = require("which-key")
		local telescopeBuiltin = require("telescope.builtin")
		-- As an example, we will create the following mappings:
		--  * <leader>ff find files
		--  * <leader>fr show recent files
		--  * <leader>fb Foobar
		-- we'll document:
		--  * <leader>fn new file
		--  * <leader>fe edit file
		-- and hide <leader>1
		wk.setup({
			window = {
				border = "single",
			},
			layout = {
				align = "center",
			},
		})

		wk.register({
			["<leader>t"] = {
				name = "Telescope",
				f = { "<cmd>Telescope find_files<cr>", "Find File" },
				g = { telescopeBuiltin.live_grep, "Live Grep" },
				s = { telescopeBuiltin.lsp_document_symbols, "Document Symbols" },
				n = { "<cmd>enew<cr>", "New File" },
				t = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Search This File" },
				r = { vim.lsp.buf.rename, "Rename all uses" },
			},
			["<leader>l"] = {
				name = "LSP",
				r = { ":LspRestart<CR>", "Restart Lsp" },
			},
			["<leader>g"] = {
				name = "Go to",
				i = { "<cmd>Telescope lsp_implementations<CR>", "Implemetation" },
				d = { "<cmd>Telescope lsp_type_definitions<CR>", "Definitions" },
				r = { "<cmd>Telescope lsp_references<CR>", "References" },
				e = { telescopeBuiltin.lsp_outgoing_calls, "External Calls" },
				f = { telescopeBuiltin.lsp_incoming_calls, "Internal Calls" },
			},
			["<leader>u"] = {
				name = "UI",
				n = { "<cmd>FloatermNew nnn<cr>", "NNN File Manager" },
				l = { "<cmd>FloatermNew lazygit<cr>", "LazyGit" },
			},
		})
	end,
}
