MUI_Invite = MUI:NewModule('MUI.General.Invite')

function MUI_Invite:OnInitialize()
    self.Frame = CreateFrame("Frame")

    function self:Accept(_, _, _, _, _, _, _, guid)
        -- Check if player is already in party
        if UnitInParty("player") then return end

        -- Accept invite if friend or guild mate
        if C_BattleNet.GetAccountInfoByGUID(guid) or C_FriendList.IsFriend(guid) or IsGuildMember(guid) then
            AcceptGroup()
            StaticPopup_Hide("PARTY_INVITE")
        end
    end
end

function MUI_Invite:OnEnable()
    if MUIDB.General.Enabled and MUIDB.General.Invite then
        self.Frame:RegisterEvent("PARTY_INVITE_REQUEST")
        self.Frame:HookScript("OnEvent", self.Accept)
    end
end

function MUI_Invite:OnDisable()
    self.Frame:UnregisterAllEvents()
end