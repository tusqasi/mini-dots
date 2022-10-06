vim.g.nvim_dir = vim.fn.expand("~") .. "/.config/nvim"

-- vim.g.copilot_enabled = false

Ok, Treesitter = pcall(require, "nvim-treesitter.configs")
if Ok then
	Treesitter.setup({ highlight = { enable = true } })
end

require("tusqasi.cmp")
require("tusqasi.comments")
require("tusqasi.treesitter")
require("tusqasi.formatting")
require("tusqasi.luasnip")
require("tusqasi.snippets")
require("tusqasi.statusline")
require("tusqasi.text-obj")
