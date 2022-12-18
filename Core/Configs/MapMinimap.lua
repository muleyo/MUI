local MapMinimap = MUI:NewModule('MUI.Config.MapMinimap')

function MapMinimap:OnEnable()
    MapMinimap.config = {
        name = 'Map & Minimap',
        type = 'group',
        order = 10,
        childGroups = 'tab',
        args = {
            MapMinimapHeader = {
                type = 'header',
                name = 'Map & Minimap',
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
            Map = {
                name = 'Map',
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
            Coordinates = {
                name = 'Coordinates',
                type = 'toggle',
                desc = 'Display coordinates on the bottom of your map',
                order = 6,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Opacity = {
                name = 'Opacity',
                type = 'range',
                desc = 'Change the opacity of your map',
                width = 1,
                order = 7,
                min = 0,
                max = 1,
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
            Minimap = {
                name = 'Minimap',
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
            Time = {
                name = 'Time',
                type = 'toggle',
                desc = 'Display time on minimap',
                order = 11,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Calendar = {
                name = 'Calendar',
                type = 'toggle',
                desc = 'Display calendar on minimap',
                order = 12,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            MouseoverButtons = {
                name = 'Buttons on Mouseover',
                type = 'toggle',
                desc = 'Display buttons on Mouseover',
                order = 13,
                width = 1,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Tracking = {
                name = 'Tracking Icon',
                type = 'toggle',
                desc = 'Display tracking icon on minimap',
                order = 14,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
        }
    }
end