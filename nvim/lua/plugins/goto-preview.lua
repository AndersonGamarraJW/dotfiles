return {
	"rmagatti/goto-preview",
	config = function()
		local opts = require("goto-preview")
		opts.setup({
			default_mappings = true,
		})
	end,
}
