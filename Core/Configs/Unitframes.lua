local Unitframes = MUI:NewModule('MUI.Config.Unitframes')

function Unitframes:OnEnable()
    Unitframes.config = {
        name = 'Unitframes',
        type = 'group',
        desc = 'Player/Target/Focus Frame options',
        order = 3,
        childGroups = 'tab',
        args = {
            UnitframesHeader = {
                type = 'header',
                name = 'Unitframes',
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
            Style = {
                name = 'Style',
                type = 'select',
                desc = 'Select a style you like',
                order = 3,
                width = 1.35,
                values = {'Blizzard', 'Classic'}
            },
            Texture = {
                name = 'Texture',
                type = 'select',
                desc = 'Change the health/mana textures',
                width = 1.35,
                order = 4,
                values = {'Blizzard'}
            },
            Space1 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            Classcolor = {
                name = 'Class Color',
                type = 'toggle',
                desc = 'Display healthbars in Class Colors',
                order = 6,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            PVPBadge = {
                name = 'PVP Badge',
                type = 'toggle',
                desc = 'Hide the PVP Icon on Unitframes',
                order = 7,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            HitIndicator = {
                name = 'Hit Indicator',
                type = 'toggle',
                desc = 'Hide the Hit Indicator (numbers on the Player Unitframe Portrait)',
                order = 8,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            CombatIndicator = {
                name = 'Combat Indicator',
                type = 'toggle',
                desc = 'Display an Combat Icon next to your Target/Focus Frame',
                order = 9,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            TotemIcons = {
                name = 'Totem Icons',
                type = 'toggle',
                desc = 'Hide Totem Icons (Consecration duration etc.) below the Player Unitframe',
                order = 10,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            ClassBar = {
                name = 'Class Bar',
                type = 'toggle',
                desc = 'Hide the Class Bar (Combopoints, Holypower etc.)',
                order = 11,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
        }
    }
end