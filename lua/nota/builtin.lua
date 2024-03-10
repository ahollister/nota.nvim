local open = require("nota.open")

local builtin = {}

builtin.open_global = function()
	return open.open_global()
end

builtin.open_local = function()
	return open.open_local()
end

return builtin
