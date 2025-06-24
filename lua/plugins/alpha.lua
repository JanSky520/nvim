return {
    "goolord/alpha-nvim",
    opts = {},
    config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        local function get_footer()
            local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
            local stats = require("lazy").stats()
            local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
  
            return {
                " ",
                "⚡ Neovim loaded " .. stats.count .. " plugins in " .. ms .. "ms",
                datetime,
                " ",
            }
        end
    
        dashboard.section.header.val = {
            "██╗   ██╗ ██████╗ █████╗ ███████╗",
            "██║   ██║██╔════╝██╔══██╗██╔════╝",
            "██║   ██║██║     ███████║███████╗",
            "██║   ██║██║     ██╔══██║╚════██║",
            "╚██████╔╝╚██████╗██║  ██║███████║",
            " ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝",
            "                                 ",
            "  中国科学院沈阳计算技术研究所   ",
        }

        alpha.setup(dashboard.opts)

        dashboard.section.buttons.val = {
            dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
            dashboard.button( "q", " 退出 NVIM", ":qa<CR>"),
        }

        dashboard.section.fotter.val = get_footer()
    end
}
