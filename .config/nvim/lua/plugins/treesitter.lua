return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	--event = {"BufNewFile","BufReadPre"},
	--
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			rainbow = {
				enable = true,
				disable = { "jsx", "cpp", "javascript" }, --list of languages you want to disable the plugin for
				extended_mode = true,         -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
				max_file_lines = nil,         -- Do not enable for files with more than n lines, int
				-- colors = {}, -- table of hex strings
				-- termcolors = {} -- table of colour name strings
				--
			},

		})
	end,
}
