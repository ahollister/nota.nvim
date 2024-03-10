local config = require("nota.config")

local open = {}

open.open_global = function()
	open.open_nota(config.user_opts.global_path, config.user_opts.split_type)
end

open.open_local = function()
	open.open_nota(config.user_opts.local_path, config.user_opts.split_type)
end

open.open_nota = function(path, split_type)
	if split_type == "vertical" then
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
