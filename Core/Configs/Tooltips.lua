local Tooltips = MUI:NewModule('MUI.Config.Tooltips')

function Tooltips:OnEnable()
    Tooltips.config = {
        name = 'Tooltips',
        type = 'group',
        order = 9,
        childGroups = 'tab',
        args = {
            TooltipsHeader = {
                type = 'header',
                name = 'Tooltips',
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
            Spellicon = {
                name = 'Hide in Combat',
                type = 'toggle',
                desc = 'Hide tooltips while in combat',
                order = 6,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            LifeOnTop = {
                name = 'HP on top',
                type = 'toggle',
                desc = 'Display HP Bar in tooltip on top',
                order = 6,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Mouseanchor = {
                name = 'Mouseanchor',
                type = 'toggle',
                desc = 'Display tooltips next to your mouse cursor',
                order = 6,
                width = 0.8,
                set = function(_, status)

                end,
                get = function()

                end
            },
        }
    }
end