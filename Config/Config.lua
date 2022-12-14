local mUI_Config = mUI:NewModule("mUI_Config")

function mUI_Config:OnEnable()
    local LSM = LibStub("LibSharedMedia-3.0")

    -- Create Menu
    local options = {
        type = 'group',
        args = {
            enable = {
            name = 'Enable',
            desc = 'Enables / disables the AddOn',
            type = 'toggle',
            set = function(_, status)

            end,
            get = function()

            end
            },
            General = {
                name = 'General',
                type = 'group',
                desc = 'You can adjust the Game Font, Theme etc. here',
                order = 1,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'General',
                        order = 1
                    },
                }
            },
            Unitframes = {
                name = 'Unitframes',
                type = 'group',
                desc = 'Player/Target/Focus Frame options',
                order = 2,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Unitframes',
                        order = 1
                    },
                }
            },
            PartyRaidFrames = {
                name = 'Party & Raid Frames',
                type = 'group',
                desc = '',
                order = 3,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Party & Raid Frames',
                        order = 1
                    },
                }
            },
            Nameplates = {
                name = 'Nameplates',
                type = 'group',
                order = 4,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Nameplates',
                        order = 1
                    },
                }
            },
            Actionbars = {
                name = 'Actionbars',
                type = 'group',
                order = 5,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Actionbars',
                        order = 1
                    },
                }
            },
            Castbars = {
                name = 'Castbars',
                type = 'group',
                order = 6,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Castbars',
                        order = 1
                    },
                }
            },
            Tooltips = {
                name = 'Tooltips',
                type = 'group',
                order = 7,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Tooltips',
                        order = 1
                    },
                }
            },
            MapMinimap = {
                name = 'Map & Minimap',
                type = 'group',
                order = 8,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Map & Minimap',
                        order = 1
                    },
                }
            },
            Chat = {
                name = 'Chat',
                type = 'group',
                order = 9,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Chat',
                        order = 1
                    },
                }
            },
            Miscellaneous = {
                name = 'Miscellaneous',
                type = 'group',
                order = 10,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Miscellaneous',
                        order = 1
                    },
                }
            },
            Info = {
                name = 'Info',
                type = 'group',
                order = 11,
                childGroups = "tab",
                args={
                    generalHeader = {
                        type = 'header',
                        name = 'Info',
                        order = 1
                    },
                }
            }
        }
    }

    -- Register Menu
    LibStub('AceConfig-3.0'):RegisterOptionsTable('muleyoUI', options)
    LibStub('AceConfigDialog-3.0'):AddToBlizOptions('muleyoUI')

    -- Slash Command Function
    function SlashCommand(msg)
        LibStub("AceConfigDialog-3.0"):Open('muleyoUI')
    end

    -- Register Slash Command
    mUI:RegisterChatCommand('mUI', SlashCommand)
end