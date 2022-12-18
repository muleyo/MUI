local Chat = MUI:NewModule('MUI.Config.Chat')

function Chat:OnEnable()
    Chat.config = {
        name = 'Chat',
        type = 'group',
        order = 11,
        childGroups = 'tab',
        args = {
            ChatHeader = {
                type = 'header',
                name = 'Chat',
                order = 1
            },
            Enable = {
                name = 'Enable',
                type = 'toggle',
                desc = 'Enable/Disable Module',
                order = 2,
                width = 'full',
                set = function(_, status)

                end,
                get = function()

                end
            },
            Space1 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 3
            },
            Style = {
                name = 'Style',
                type = 'select',
                desc = 'Select a style you like',
                order = 4,
                width = 1.35,
                values = {'Blizzard', 'MUI'}
            },
            Space2 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            Links = {
                name = 'Copy Links',
                type = 'toggle',
                desc = 'Make Links clickable to copy them',
                order = 6,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Top = {
                name = 'EditBox on top',
                type = 'toggle',
                desc = 'Sell grey items automatically',
                order = 7,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Friendlist = {
                name = 'Friendlist Classcolors',
                type = 'toggle',
                desc = 'Show classcolors in your friendlist',
                order = 8,
                width = 1,
                set = function(_, status)

                end,
                get = function()

                end
            },
        }
    }
end