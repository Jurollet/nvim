return {
    "goolord/alpha-nvim",
    event = "BufEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set header
        dashboard.section.header.val = {
            "                            .                            ",
            "                          :---.                          ",
            "                        :-------.                        ",
            "                      :-----------.                      ",
            "                    :---------------.                    ",
            "                  :-------------------.                  ",
            "                :-----------------------.                ",
            "             .+*=----------------------=+*-              ",
            "           .+*****+------------------=+*****-            ",
            "         .+*********================+*********-          ",
            "       .+##***********+===========+**********##*-        ",
            "     .+####*************+=======+************####*-      ",
            "   .+######***************+===+**************######*-    ",
            "  -########*****************+****************########*   ",
            "   :+######***************+==+***************######*-    ",
            "     :+####*************++=====+*************####*-      ",
            "       :+##***********++++++++++++***********##*-        ",
            "       ..-+*********=-=++++++++++-::+*********+--.       ",
            "      ....:-******=-----=++++++-:::::-+*****+------.     ",
            "    ......:::-**=--------==++-...::::::-+*+--------=-.   ",
            "    ......:::::::--------=-: ....::::::::----------==:   ",
            "     .....:::::::--------.     ..:::::::::---------:     ",
            "       ...:::::::------.         .::::::::-------:       ",
            "         .:::::::----.             .::::::-----:         ",
            "           .:::::-:.                 .::::---.           ",
            "             ::::.                     .::-.             ",
            "               .                         .               ",
        }

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("r", "💾  > Restore session", ":PossessionLoadCurrent<CR>"),
            dashboard.button("g", "🔀  > Open Git GUI", ":LazyGit<CR>"),
            dashboard.button("e", "✨  > New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("f", "🔎  > Find file", ":FzfLua files<CR>"),
            dashboard.button("s", "🛠️  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
            dashboard.button("q", "🚪  > Quit NVIM", ":qa<CR>"),
        }

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Disable folding on alpha buffer
        vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
    end,
};
