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

        vim.api.nvim_set_hl(0, "SBS_Yellow", { fg = "#F8D54B" })
        vim.api.nvim_set_hl(0, "SBS_Orange", { fg = "#EF8696" })
        vim.api.nvim_set_hl(0, "SBS_Blue", { fg = "#5AA9E7" })
        vim.api.nvim_set_hl(0, "SBS_Indigo", { fg = "#355FC3" })
        vim.api.nvim_set_hl(0, "SBS_Pink", { fg = "#E732AD" })
        vim.api.nvim_set_hl(0, "SBS_Violet", { fg = "#8B1AB7" })

        dashboard.section.header.opts.hl = {
            { { 'SBS_Yellow', 0, 53 } },
            { { 'SBS_Yellow', 0, 53 } },
            { { 'SBS_Yellow', 0, 53 } },
            { { 'SBS_Yellow', 0, 53 } },
            { { 'SBS_Yellow', 0, 53 } },
            { { 'SBS_Yellow', 0, 53 } },
            { { 'SBS_Yellow', 0, 53 } },
            { { 'SBS_Pink', 0, 16 }, { 'SBS_Yellow', 16, 40 }, { 'SBS_Pink', 40, 53 } },
            { { 'SBS_Pink', 0, 18 }, { 'SBS_Yellow', 18, 38 }, { 'SBS_Pink', 38, 53 } },
            { { 'SBS_Pink', 0, 20 }, { 'SBS_Yellow', 20, 36 }, { 'SBS_Pink', 36, 53 } },
            { { 'SBS_Pink', 0, 22 }, { 'SBS_Yellow', 22, 34 }, { 'SBS_Pink', 34, 53 } },
            { { 'SBS_Pink', 0, 24 }, { 'SBS_Yellow', 24, 32 }, { 'SBS_Pink', 32, 53 } },
            { { 'SBS_Pink', 0, 26 }, { 'SBS_Yellow', 26, 30 }, { 'SBS_Pink', 30, 53 } },
            { { 'SBS_Pink', 0, 28 }, { 'SBS_Indigo', 28, 29 }, { 'SBS_Pink', 29, 54 } },
            { { 'SBS_Pink', 0, 26 }, { 'SBS_Indigo', 26, 30 }, { 'SBS_Pink', 30, 53 } },
            { { 'SBS_Pink', 0, 24 }, { 'SBS_Indigo', 24, 32 }, { 'SBS_Pink', 32, 53 } },
            { { 'SBS_Pink', 0, 22 }, { 'SBS_Indigo', 22, 34 }, { 'SBS_Pink', 34, 53 } },
            { { 'SBS_Blue', 0, 9 }, { 'SBS_Pink', 9, 19 }, { 'SBS_Blue', 19, 21 }, { 'SBS_Indigo', 21, 34 }, { 'SBS_Blue', 34, 36 }, { 'SBS_Pink', 36, 47 }, { 'SBS_Blue', 47, 54 }},
            { { 'SBS_Blue', 0, 11 }, { 'SBS_Pink', 11, 18 }, { 'SBS_Blue', 18, 24 }, { 'SBS_Indigo', 24, 32 }, { 'SBS_Blue', 32, 37 }, { 'SBS_Pink', 37, 45 }, { 'SBS_Blue', 45, 54 } },
            { { 'SBS_Blue', 0, 13 }, { 'SBS_Pink', 13, 16 }, { 'SBS_Blue', 16, 26 }, { 'SBS_Indigo', 26, 30 }, { 'SBS_Blue', 30, 40 }, { 'SBS_Pink', 40, 43 }, { 'SBS_Blue', 43, 54 } },
            { { 'SBS_Blue', 0, 27 }, { 'SBS_Indigo', 27, 28 }, { 'SBS_Blue', 28, 54 } },
            { { 'SBS_Blue', 0, 53 } },
            { { 'SBS_Blue', 0, 53 } },
            { { 'SBS_Blue', 0, 53 } },
            { { 'SBS_Blue', 0, 53 } },
            { { 'SBS_Blue', 0, 53 } },
            { { 'SBS_Blue', 0, 53 } },
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
