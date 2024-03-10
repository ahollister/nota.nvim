local builtin = require("nota.builtin")

local command = {}

command.create_command = function()
	-- Create the Nota command
	vim.api.nvim_create_user_command("Nota", function(opts)
		if opts.fargs[1] == "open_global" then
			builtin.open_global()
		elseif opts.fargs[1] == "open_local" then
			builtin.open_local()
		end
	end, {
		-- Expect one argument
		nargs = 1,
		-- Autocomplete command arguments
		complete = function(arglead)
			local commands = {
				"open_global",
				"open_local",
			}

			local results = {}
			for _, v in pairs(commands) do
				if v:match(arglead) then
					table.insert(results, v)
				end
			end

			return results
		end,
	})
end

return command
