local Miscellaneous = MUI:NewModule('MUI.Config.Miscellaneous')

function Miscellaneous:OnEnable()
    Miscellaneous.config = {
        name = 'Miscellaneous',
        type = 'group',
        order = 12,
        childGroups = 'tab',
        args = {
            MiscellaneousHeader = {
                type = 'header',
                name = 'Miscellaneous',
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
            General = {
                name = 'General',
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
            Interrupt = {
                name = 'Interrupt',
                type = 'toggle',
                desc = 'Announce successful interrupts in Party/Raid/Instance group',
                order = 6,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            LoCAlert = {
                name = 'LoC Alert',
                type = 'toggle',
                desc = 'More transparent Loss of Control alert frame',
                order = 7,
                width = 0.6,
                set = function(_, status)

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
            PvP = {
                name = 'PvP',
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
            TabBinder = {
                name = 'TAB Binder',
                type = 'toggle',
                desc = 'Only target players with TAB in PvP-Combat (Open World, Arena, BGs)',
                order = 11,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Dampening = {
                name = 'Dampening',
                type = 'toggle',
                desc = 'Display Dampening below Arena timer',
                order = 12,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Surrender = {
                name = 'Surrender',
                type = 'toggle',
                desc = 'Surrender Arena matches by typing /gg',
                order = 13,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            SafeQueue = {
                name = 'SafeQueue',
                type = 'toggle',
                desc = 'Display timer on Queuepop window and remove leave button',
                order = 14,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
        }
    }
end