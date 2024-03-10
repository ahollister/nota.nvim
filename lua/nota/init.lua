local config = require("nota.config")
local command = require("nota.command")

local nota = {}

nota.setup = function(opts)
	opts = opts or {}

	config.set_user_opts({
		global_path = opts.global_path or nil,
		scratch_path = opts.scratch_path or nil,
		local_path = opts.local_path or nil,
		vertical_split = opts.vertical_split or nil,
	})

	command.create_command()
end

return nota
