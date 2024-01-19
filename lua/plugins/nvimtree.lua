return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup()
		vim.keymap.set("n", "<leader>et", vim.cmd.NvimTreeToggle)
		vim.keymap.set("n", "<leader>ef", vim.cmd.NvimTreeFindFile)
		require("nvim-web-devicons").refresh()
	end
}
