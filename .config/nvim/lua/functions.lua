M = {}

M.packer_sync = function()
	print("Sourcing nvim/plugin/plugins.lua")
	vim.cmd("source " .. vim.g.nvim_dir .. "/plugin/plugins.lua")
	require("packer").sync()
end

M.filetype_icon = function()
	local filetype = vim.bo.filetype
	if filetype == "" then
		return ""
	end
	local filename, fileext = vim.fn.expand("%:t"), vim.fn.expand("%:e")
	local icon = require("nvim-web-devicons").get_icon(filename, fileext, { default = true })
	return string.format("%s", icon)
end

return M
