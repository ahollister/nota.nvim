local config = require("nota.config")

local open = {}

open.open_global = function()
	open.open_nota(config.user_opts.global_path, config.user_opts.vertical_split)
end

open.open_scratch = function()
	open.open_nota(config.user_opts.scratch_path, config.user_opts.vertical_split)
end

open.open_local = function()
	open.open_nota(vim.fn.getcwd() .. "/" .. config.user_opts.local_path, config.user_opts.vertical_split)
end

open.open_nota = function(path, vertical_split)
	-- Create the path first if it doesn't already exist
	open.create_path(path)
	-- Open it in a split based on user opts
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

-- Create the directories for the path if they don't already exist
open.create_path = function(path)
	local dir = path:match("(.*/)")
	if dir ~= nil and vim.fn.isdirectory(dir) == 0 then
		vim.fn.system("mkdir -p " .. dir)
	end
end

return open
