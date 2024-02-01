return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup()
		vim.keymap.set("n", "<leader>et", vim.cmd.NvimTreeToggle, { desc = "Toggle" })
		vim.keymap.set("n", "<leader>ef", vim.cmd.NvimTreeFindFile, { desc = "Focus" })
		require("nvim-web-devicons").refresh()
	end
}
