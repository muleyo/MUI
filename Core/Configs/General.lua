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
                set = function(_, value)
                    if value == false then
                        print("|cff009cffMUI|r: To fully disable the module 'General', please reload your UI.")
                    end
                    MUIDB.General.Enabled = value
                end,
                get = function(value)
                    return MUIDB.General.Enabled
                end
            },
            Theme = {
                name = 'Theme',
                type = 'select',
                desc = 'Select a theme you like',
                order = 3,
                width = 1,
                values = {'Blizzard', 'Dark'},
                set = function(_, value)
                    MUIDB.General.Theme = value
                end,
                get = function()
                    return MUIDB.General.Theme
                end
            },
            Font = {
                name = 'Font',
                type = 'select',
                desc = 'Change your game font - NOTE: You should restart your game after changing font',
                width = 1,
                order = 4,
                values = {'Blizzard'},
                set = function(_, value)
                    MUIDB.General.Font = value
                end,
                get = function()
                    return MUIDB.General.Font
                end
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
                set = function(_, value)
                    if value == false then
                        MUI_Sell:OnDisable()
                    end
                    MUIDB.General.Sell = value
                end,
                get = function()
                    return MUIDB.General.Sell
                end
            },
            Delete = {
                name = 'Delete',
                type = 'toggle',
                desc = 'Inserts "DELETE" into the field when destroying Rare+ items',
                order = 9,
                width = 0.6,
                set = function(_, value)
                    MUIDB.General.Delete = value
                end,
                get = function()
                    return MUIDB.General.Delete
                end
            },
            Invite = {
                name = 'Invite',
                type = 'toggle',
                desc = 'Automatically accept group invites from friends',
                order = 10,
                width = 0.6,
                set = function(_, value)
                    if value == false then
                        MUI_Invite:OnDisable()
                    end
                    MUIDB.General.Invite = value
                end,
                get = function()
                    return MUIDB.General.Invite
                end
            },
            Itemlevel = {
                name = 'Item Level',
                type = 'toggle',
                desc = 'Display Item level on items and display average Item level on inspected players',
                order = 11,
                width = 0.6,
                set = function(_, value)
                    if value == false then
                        MUI_Itemlevel:OnDisable()
                    end
                    MUIDB.General.Itemlevel = value
                end,
                get = function()
                    return MUIDB.General.Itemlevel
                end
            },
            Cinematic = {
                name = 'Cinematic',
                type = 'toggle',
                desc = 'Automatically skip cinematics',
                order = 12,
                width = 0.6,
                set = function(_, value)
                    if value == false then
                        MUI_Cinematic:OnDisable()
                    end
                    MUIDB.General.Cinematic = value
                end,
                get = function()
                    return MUIDB.General.Cinematic
                end
            },
            XPBar = {
                name = 'Hide XP Bar',
                type = 'toggle',
                desc = 'Hide the XP Bar - NOTE: This will also hide your Reputation and Honor Bar',
                order = 13,
                width = 0.6,
                set = function(_, value)
                    if value == false then
                        MUI_XPBar:OnDisable()
                    end
                    MUIDB.General.XPBar = value
                end,
                get = function()
                    return MUIDB.General.XPBar
                end
            },
            Talkinghead = {
                name = 'Talkinghead',
                type = 'toggle',
                desc = 'Automatically skip cinematics',
                order = 14,
                width = 0.6,
                set = function(_, value)
                    MUIDB.General.Talkinghead = value
                end,
                get = function()
                    return MUIDB.General.Talkinghead
                end
            },
            Errors = {
                name = 'Errors',
                type = 'toggle',
                desc = 'Disable error messages (Out of range etc.)',
                order = 15,
                width = 0.6,
                set = function(_, value)
                    MUIDB.General.Errors = value
                end,
                get = function()
                    return MUIDB.General.Errors
                end
            },
            Space2 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 16
            },
            Repair = {
                name = 'Repair',
                type = 'select',
                desc = 'Automatically repair with your own gold or from guild bank',
                order = 17,
                width = 1,
                values = {
                    'Disabled',
                    'Auto-Repair',
                    'Auto-Repair (Guild Bank)'
                },
                set = function(_, value)
                    if value == false then
                        MUI_Repair:OnDisable()
                    end
                    MUIDB.General.Repair = value
                end,
                get = function()
                    return MUIDB.General.Repair
                end
            },
        }
    }
end