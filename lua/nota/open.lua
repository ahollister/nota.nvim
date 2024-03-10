local config = require("nota.config")

local open = {}

open.open_global = function()
	open.open_nota(config.user_opts.global_path, config.user_opts.vertical_split)
end

open.open_local = function()
	open.open_nota(vim.fn.getcwd() .. "/" .. config.user_opts.local_path, config.user_opts.vertical_split)
end

open.open_nota = function(path, vertical_split)
	if vertical_split then
		open.open_nota_in_vertical_split(path)
		return
	end
	open.open_nota_in_horizontal_split(path)
end

open.open_nota_in_horizontal_split = function(path)
	vim.cmd("split! " .. path)
end

open.open_nota_in_vertical_split = function(path)
	vim.cmd("vsplit! " .. path)
end

return open
