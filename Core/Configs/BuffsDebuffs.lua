local BuffsDebuffs = MUI:NewModule('MUI.Config.BuffsDebuffs')

function BuffsDebuffs:OnEnable()
    BuffsDebuffs.config = {
        name = 'Buffs & Debuffs',
        type = 'group',
        desc = '',
        order = 5,
        childGroups = 'tab',
        args = {
            BuffsDebuffsHeader = {
                type = 'header',
                name = 'Buffs & Debuffs',
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
            Unitframes = {
                name = 'Unitframes',
                type = 'description',
                fontSize = 'large',
                order = 4
            },
            Space2 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            BuffSize = {
                name = 'Buff Size',
                type = 'range',
                width = 1,
                order = 6,
                min = 5,
                max = 35,
                step = 0.1,
                set = function(_, value)

                end,
                get = function()

                end
            },
            DebuffSize = {
                name = 'Debuff Size',
                type = 'range',
                width = 1,
                order = 7,
                min = 5,
                max = 35,
                step = 0.1,
                set = function(_, value)

                end,
                get = function()

                end
            },
            Space3 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 8
            },
            Player = {
                name = 'Player Buff Frame',
                type = 'description',
                fontSize = 'large',
                order = 9
            },
            Space4 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 10
            },
            Collapse = {
                name = 'Collapse Button',
                type = 'toggle',
                desc = 'Hide the Collapse Button at the Player Buff Frame',
                order = 11,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
        }
    }
end