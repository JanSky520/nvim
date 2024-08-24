require('dashboard').setup {

    theme = 'hyper',
        config = {
            week_header = {
                enable = true,
            },
            shortcut = {
                { desc = '󰊳 Update', group = '@property', action = 'Lazy sync', key = 'u' },
                
                {
                    icon = ' ',
                    icon_hl = '@variable',
                    desc = 'Files',
                    group = 'Label',
                    action = 'Telescope find_files',
                    key = 'f',
                },
                
                {
                    desc = ' ChatGpt',
                    group = 'DiagnosticHint',
                    action = 'NeoAI',
                    key = 'a',
                },
                
                {
                    desc = ' terminal',
                    group = 'Number',
                    action = 'FloatermToggle',
                    key = 't',
                },
            },
        },

}
