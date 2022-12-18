local General = MUI:NewModule('MUI.Config.General')

function General:OnEnable()
    General.config = {
        name = 'General',
        type = 'group',
        desc = 'You can adjust the Game Font, Theme etc. here',
        order = 2,
        childGroups = 'tab',
        args={
            GeneralHeader = {
                type = 'header',
                name = 'General',
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
            Theme = {
                name = 'Theme',
                type = 'select',
                desc = 'Select a theme you like',
                order = 3,
                width = 1,
                values = {'Blizzard', 'Dark'}
            },
            Font = {
                name = 'Font',
                type = 'select',
                desc = 'Change your game font - NOTE: You should restart your game after changing font',
                width = 1,
                order = 4,
                values = {'Blizzard'}
            },
            Space1 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            Sell = {
                name = 'Sell',
                type = 'toggle',
                desc = 'Sell grey items automatically',
                order = 8,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Delete = {
                name = 'Delete',
                type = 'toggle',
                desc = 'Inserts "DELETE" into the field when destroying Rare+ items',
                order = 9,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Duel = {
                name = 'Duel',
                type = 'toggle',
                desc = 'Declines duels automatically',
                order = 10,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Release = {
                name = 'Release',
                type = 'toggle',
                desc = 'Automatically releases on death',
                order = 11,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Resurrect = {
                name = 'Resurrect',
                type = 'toggle',
                desc = 'Automatically accept resurrections',
                order = 12,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Invite = {
                name = 'Invite',
                type = 'toggle',
                desc = 'Automatically accept group invites from friends',
                order = 13,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Itemlevel = {
                name = 'Item Level',
                type = 'toggle',
                desc = 'Display Item level on items and display average Item level on inspected players',
                order = 14,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Cinematic = {
                name = 'Cinematic',
                type = 'toggle',
                desc = 'Automatically skip cinematics',
                order = 15,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            XPBar = {
                name = 'Hide XP Bar',
                type = 'toggle',
                desc = 'Hide the XP Bar - NOTE: This will also hide your Reputation and Honor Bar',
                order = 16,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Talkinghead = {
                name = 'Talkinghead',
                type = 'toggle',
                desc = 'Automatically skip cinematics',
                order = 17,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Errors = {
                name = 'Errors',
                type = 'toggle',
                desc = 'Disable error messages (Out of range etc.)',
                order = 18,
                width = 0.6,
                set = function(_, status)

                end,
                get = function()

                end
            },
            Space2 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 19
            },
            Repair = {
                name = 'Repair',
                type = 'select',
                desc = 'Automatically repair with your own gold or from guild bank',
                order = 20,
                width = 1,
                values = {'Disabled', 'Repair automatically', 'Repair automatically (Guild Bank)'}
            },
        }
    }
end