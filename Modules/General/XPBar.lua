MUI_XPBar = MUI:NewModule('MUI.General.XPBar')

function MUI_XPBar:OnEnable()
    if MUIDB.General.Enabled and MUIDB.General.XPBar then
        StatusTrackingBarManager:HookScript("OnEvent", function()
            StatusTrackingBarManager:Hide()
        end)
    end
end

function MUI_XPBar:OnDisable()
    print("|cff009cffMUI|r: To fully disable the feature 'Hide XP Bar', please reload your UI.")
end