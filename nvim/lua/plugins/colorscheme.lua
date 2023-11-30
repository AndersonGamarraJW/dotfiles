return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {},
	config = function()
		require("catppuccin").setup({
			integrations = {
				alpha = true,
				cmp = true,
				which_key = true,
				telescope = {
					enabled = true,
					style = "nvchad",
				},
				mason = true,
				indent_blankline = {
					enabled = true,
					scope_color = "lavender", -- catppuccin color (eg. `lavender`) Default: text
					colored_indent_levels = true,
				},
			},
			custom_highlights = function(C)
				return {
					CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
					CmpItemKindKeyword = { fg = C.base, bg = C.red },
					CmpItemKindText = { fg = C.base, bg = C.teal },
					CmpItemKindMethod = { fg = C.base, bg = C.blue },
					CmpItemKindConstructor = { fg = C.base, bg = C.blue },
					CmpItemKindFunction = { fg = C.base, bg = C.blue },
					CmpItemKindFolder = { fg = C.base, bg = C.blue },
					CmpItemKindModule = { fg = C.base, bg = C.blue },
					CmpItemKindConstant = { fg = C.base, bg = C.peach },
					CmpItemKindField = { fg = C.base, bg = C.green },
					CmpItemKindProperty = { fg = C.base, bg = C.green },
					CmpItemKindEnum = { fg = C.base, bg = C.green },
					CmpItemKindUnit = { fg = C.base, bg = C.green },
					CmpItemKindClass = { fg = C.base, bg = C.yellow },
					CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
					CmpItemKindFile = { fg = C.base, bg = C.blue },
					CmpItemKindInterface = { fg = C.base, bg = C.yellow },
					CmpItemKindColor = { fg = C.base, bg = C.red },
					CmpItemKindReference = { fg = C.base, bg = C.red },
					CmpItemKindEnumMember = { fg = C.base, bg = C.red },
					CmpItemKindStruct = { fg = C.base, bg = C.blue },
					CmpItemKindValue = { fg = C.base, bg = C.peach },
					CmpItemKindEvent = { fg = C.base, bg = C.blue },
					CmpItemKindOperator = { fg = C.base, bg = C.blue },
					CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
					CmpItemKindCopilot = { fg = C.base, bg = C.teal },
				}
			end,
		})
	end,
}
