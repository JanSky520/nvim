local telescope = require("telescope")
local telescopeConfig = require("telescope.config")

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<C-h>"] = "which_key"
            }
        },
        initial_mode = "insert",
        vimgrep_arguments = vimgrep_arguments,
    },
    pickers = {
        -- picker_name = {
            --   picker_config_key = value,
            --   ...
        -- }
        find_files = {
            -- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
            theme = "dropdown",
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
        },
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
    }
}
