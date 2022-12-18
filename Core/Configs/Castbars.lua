local Castbars = MUI:NewModule('MUI.Config.Castbars')

function Castbars:OnEnable()
    Castbars.config = {
        name = 'Castbars',
        type = 'group',
        order = 8,
        childGroups = 'tab',
        args = {
            CastbarsHeader = {
                type = 'header',
                name = 'Castbars',
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
                width = 1,
                values = {'Blizzard', 'MUI', 'Classic'}
            },
            Space2 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            Spellicon = {
                name = 'Spell Icon',
                type = 'toggle',
                desc = 'Display Spell Icon next to the Player Castbar',
                order = 7,
                width = 1,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Casttime = {
                name = 'Cast Time',
                type = 'toggle',
                desc = 'Display Cast time next to castbars',
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