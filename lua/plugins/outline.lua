return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>es", "<cmd>topleft Outline<CR>", desc = "Toggle structure" },
  },
  opts = {
    -- Your setup opts here
  },
}
