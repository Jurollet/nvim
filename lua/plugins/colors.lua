return {
	"catppuccin/nvim",
	name = "catppuccin",
    priority = 1000,
	config = function()
		vim.opt.termguicolors = true
		vim.opt.showmode = false
        vim.cmd([[colorscheme catppuccin]])
	end
}
