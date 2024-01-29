return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			dap.adapters.coreclr = {
				type = "executable",
				command = "/usr/local/netcoredbg",
				args = { "--interpreter=vscode" },
			}

			dap.configurations.cs = {
				{
					type = "coreclr",
					name = "launch - netcoredbg",
					request = "attach",
					processId = function()
						local name = vim.fn.input("Process Name: ")

						-- get proc id
						return require("dap.utils").pick_process({
							filter = function(proc)
								return proc.name:find(name, 1, true) ~= nil
							end,
						})
					end,
				},
			}
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			require("dapui").setup({
				icons = {
					expanded = "▾",
					collapsed = "▸",
					current_frame = "●",
				},
				controls = {
					icons = {
						step_over = "▸▸",
						step_into = "v",
						step_out = "^",
						pause = "▌▌",
						restart = "⟳",
						stop = "◼",
						play = "▶",
						run_last = "▶▶",
						step_back = "◀",
						terminate = "x",
					},
				},
			})

			local dap, dapui = require("dap"), require("dapui")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
	{
		"theHamsta/nvim-dap-virtual-text",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			require("nvim-dap-virtual-text").setup({})
		end,
	},
}
