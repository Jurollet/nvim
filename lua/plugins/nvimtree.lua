return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup()
		vim.keymap.set("n", "<leader>tt", vim.cmd.NvimTreeToggle)
		vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFindFile)
		require("nvim-web-devicons").refresh()
	end
}
