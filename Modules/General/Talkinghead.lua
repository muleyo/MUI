MUI_Talkinghead = MUI:NewModule('MUI.General.Talkinghead')

function MUI_Talkinghead:OnInitialize()
    hooksecurefunc(TalkingHeadFrame, "PlayCurrent", function()
        if MUIDB.General.Enabled and MUIDB.General.Talkinghead then
            TalkingHeadFrame:Hide()
        end
    end)
end