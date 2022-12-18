local PartyRaidFrames = MUI:NewModule('MUI.Config.PartyRaidFrames')

function PartyRaidFrames:OnEnable()
    PartyRaidFrames.config = {
        name = 'Party & Raid Frames',
        type = 'group',
        desc = '',
        order = 4,
        childGroups = 'tab',
        args = {
            PartyRaidFrameHeader = {
                type = 'header',
                name = 'Party & Raid Frames',
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
            Texture = {
                name = 'Texture',
                type = 'select',
                desc = 'Change the health/mana textures',
                order = 3,
                width = 1,
                values = {'Blizzard'}
            },
            CustomSize = {
                name = 'Custom Size',
                type = 'select',
                desc = 'Enable/Disable to adjust the height/width of the Party/Raidframe',
                width = 1,
                order = 4,
                values = {'Enabled', 'Disabled'}
            },
            Space = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            Height = {
                name = 'Frame Height',
                type = 'range',
                width = 1,
                order = 6,
                min = 36,
                max = 300,
                step = 1,
                set = function(_, value)

                end,
                get = function()

                end
            },
            Width = {
                name = 'Frame Width',
                type = 'range',
                width = 1,
                order = 7,
                min = 72,
                max = 300,
                step = 1,
                set = function(_, value)

                end,
                get = function()

                end
            },
        }
    }
end