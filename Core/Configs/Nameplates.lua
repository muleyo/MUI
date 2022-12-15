local Nameplates = MUI:NewModule('MUI.Config.Nameplates')

function Nameplates:OnEnable()
    Nameplates.config = {
        name = 'Nameplates',
        type = 'group',
        order = 6,
        childGroups = 'tab',
        args = {
            NameplatesHeader = {
                type = 'header',
                name = 'Nameplates',
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
            Texture = {
                name = 'Texture',
                type = 'select',
                desc = 'Change the nameplate health texture',
                order = 4,
                width = 'full',
                values = {'Default'}
            },
            Space2 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            HealthText = {
                name = 'Health Text',
                type = 'toggle',
                desc = 'Show health percentage in nameplates',
                order = 6,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            CastTime = {
                name = 'Cast Time',
                type = 'toggle',
                desc = 'Show cast time below cast icon',
                order = 7,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            ArenaNumbers = {
                name = 'Arena 1/2/3',
                type = 'toggle',
                desc = 'Show arena number instead of name while in arena',
                order = 8,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            TotemIcons = {
                name = 'Totem Icons',
                type = 'toggle',
                desc = 'Show Totem Icons on nameplate',
                order = 9,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            HideServer = {
                name = 'Hide Server',
                type = 'toggle',
                desc = 'Hide Servername of players',
                order = 9,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            HideDebuffs = {
                name = 'Hide Debuffs',
                type = 'toggle',
                desc = 'Hides your own debuffs on nameplates',
                order = 10,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            ClassColorNames = {
                name = 'Classcolor Name',
                type = 'toggle',
                desc = 'Show Playernames in Class Color',
                order = 11,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Space3 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 12
            },
            Height = {
                name = 'Nameplate Height',
                type = 'range',
                width = 1.35,
                order = 13,
                min = 1,
                max = 5,
                step = 0.1,
                set = function(_, value)

                end,
                get = function()

                end
            },
            Width = {
                name = 'Nameplate Width',
                type = 'range',
                width = 1.35,
                order = 14,
                min = 1,
                max = 5,
                step = 0.1,
                set = function(_, value)

                end,
                get = function()

                end
            },
        }
    }
end