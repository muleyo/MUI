local Actionbars = MUI:NewModule('MUI.Config.Actionbars')

function Actionbars:OnEnable()
    Actionbars.config = {
        name = 'Actionbars',
        type = 'group',
        order = 7,
        childGroups = 'tab',
        args = {
            ActionbarsHeader = {
                type = 'header',
                name = 'Actionbars',
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
            Buttons = {
                name = 'Buttons',
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
            Hotkeys = {
                name = 'Hotkey Text',
                type = 'toggle',
                desc = 'Hide the Hotkey Text on Actionbuttons',
                order = 6,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Macros = {
                name = 'Macro Text',
                type = 'toggle',
                desc = 'Hide the Macro Text on Actionbuttons',
                order = 7,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Flash = {
                name = 'Button Flash',
                type = 'toggle',
                desc = 'Show Flash when pressing an Actionbutton',
                order = 8,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Range = {
                name = 'Range Color',
                type = 'toggle',
                desc = 'Show Actionbutton color in red when out of rage',
                order = 8,
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
                order = 9
            },
            Textsize = {
                name = 'Text Size',
                type = 'range',
                desc = 'Change the text size of Hotkey/Macro/Stackcount text',
                width = 0.88,
                order = 10,
                min = 5,
                max = 25,
                step = 1,
                set = function(_, value)

                end,
                get = function()

                end
            },
            Bagbuttons = {
                name = 'Bag Buttons',
                type = 'select',
                desc = 'Bag Buttions display behavior',
                order = 11,
                width = 0.88,
                values = {'Show always', 'Show on Mouseover', 'Hide'}
            },
            Micromenu = {
                name = 'Micromenu',
                type = 'select',
                desc = 'Micromenu display behavior',
                order = 12,
                width = 0.88,
                values = {'Show always', 'Show on Mouseover', 'Hide'}
            },
            Space4 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order =  13
            },
            Mouseover = {
                name = 'Show on Mouseover',
                type = 'description',
                fontSize = 'large',
                order = 14
            },
            Space5 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 15
            },
            Bar1 = {
                name = 'Bar 1',
                type = 'toggle',
                desc = 'Show Actionbar 1 on Mouseover',
                order = 16,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Bar2 = {
                name = 'Bar 2',
                type = 'toggle',
                desc = 'Show Actionbar 2 on Mouseover',
                order = 17,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Bar3 = {
                name = 'Bar 3',
                type = 'toggle',
                desc = 'Show Actionbar 3 on Mouseover',
                order = 18,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Bar4 = {
                name = 'Bar 4',
                type = 'toggle',
                desc = 'Show Actionbar 4 on Mouseover',
                order = 19,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Bar5 = {
                name = 'Bar 5',
                type = 'toggle',
                desc = 'Show Actionbar 5 on Mouseover',
                order = 20,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Bar6 = {
                name = 'Bar 6',
                type = 'toggle',
                desc = 'Show Actionbar 6 on Mouseover',
                order = 21,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Bar7 = {
                name = 'Bar 7',
                type = 'toggle',
                desc = 'Show Actionbar 7 on Mouseover',
                order = 22,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Bar8 = {
                name = 'Bar 8',
                type = 'toggle',
                desc = 'Show Actionbar 8 on Mouseover',
                order = 23,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Stancebar = {
                name = 'Stance Bar',
                type = 'toggle',
                desc = 'Show Stance Bar on Mouseover',
                order = 24,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Petbar = {
                name = 'Pet Bar',
                type = 'toggle',
                desc = 'Show Pet Bar on Mouseover',
                order = 25,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
        }
    }
end