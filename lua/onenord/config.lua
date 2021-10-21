local config = {}

local defaults = {
	borders = true, -- Split window borders
	italics = {
		comments = false, -- Italic comments
		strings = false, -- Italic strings
		keywords = true, -- Italic keywords
		functions = false, -- Italic functions
		variables = false, -- Italic variables
	},
	disable = {
		background = false, -- Disable setting the background color
	},
}

config.options = {}

config.setup = function(options)
	config.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

config.setup()

return config