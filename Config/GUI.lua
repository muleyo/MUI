local Config = MUI:NewModule('MUI.Config')

function Config:OnEnable()
    -- Define LibSharedMedia
    local LSM = LibStub('LibSharedMedia-3.0')

    -- Get Config Menus
    local Info = MUI:GetModule('MUI.Config.Info')
    local General = MUI:GetModule('MUI.Config.General')
    local Unitframes = MUI:GetModule('MUI.Config.Unitframes')
    local PartyRaidFrames = MUI:GetModule('MUI.Config.PartyRaidFrames')
    local BuffsDebuffs = MUI:GetModule('MUI.Config.BuffsDebuffs')
    local Nameplates = MUI:GetModule('MUI.Config.Nameplates')
    local Actionbars = MUI:GetModule('MUI.Config.Actionbars')
    local Castbars = MUI:GetModule('MUI.Config.Castbars')
    local Tooltips = MUI:GetModule('MUI.Config.Tooltips')
    local MapMinimap = MUI:GetModule('MUI.Config.MapMinimap')
    local Chat = MUI:GetModule('MUI.Config.Chat')
    local Miscellaneous = MUI:GetModule('MUI.Config.Miscellaneous')

    -- Create Menu
    local options = {
        type = 'group',
        args = {
            Info = Info.config,
            General = General.config,
            Unitframes = Unitframes.config,
            PartyRaidFrames = PartyRaidFrames.config,
            BuffsDebuffs = BuffsDebuffs.config,
            Nameplates = Nameplates.config,
            Actionbars = Actionbars.config,
            Castbars = Castbars.config,
            Tooltips = Tooltips.config,
            MapMinimap = MapMinimap.config,
            Chat = Chat.config,
            Miscellaneous = Miscellaneous.config,
        }
    }

    -- Register Menu
    LibStub('AceConfig-3.0'):RegisterOptionsTable('muleyoUI', options)
    LibStub('AceConfigDialog-3.0'):AddToBlizOptions('muleyoUI')

    -- Slash Command Function
    function SlashCommand(msg)
        LibStub('AceConfigDialog-3.0'):Open('muleyoUI')
    end

    -- Register Slash Command
    MUI:RegisterChatCommand('MUI', SlashCommand)
end