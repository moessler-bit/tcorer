vim.keymap.set("n", "<F5>", "<cmd>lua require'dap'.continue()<cr>")
vim.keymap.set("n", "<F10>", "<cmd>lua require'dap'.step_over()<cr>")
vim.keymap.set("n", "<F11>", "<cmd>lua require'dap'.step_into()<cr>")
vim.keymap.set("n", "<F12>", "<cmd>lua require'dap'.step_out()<cr>")
vim.keymap.set("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
vim.keymap.set("n", "<leader>B", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('breakpoint condition: '))<cr>")
vim.keymap.set("n", "<leader>lp", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('log point message: '))<cr>")
vim.keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<cr>")
vim.keymap.set("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")

require ('mason-nvim-dap').setup({
    ensure_installed = {'python', 'codelldb'},
    handlers = {}, -- sets up dap in the predefined manner
})

require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
