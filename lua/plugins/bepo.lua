return {
    "cljoly/bepo.nvim",
    config = function()
        require("bepo").easy_access()
        require("bepo").movement()
        require("bepo").tabs()
    end
}
