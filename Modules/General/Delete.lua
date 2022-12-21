MUI_Delete = MUI:NewModule('MUI.General.Delete')

function MUI_Delete:OnInitialize()
    hooksecurefunc(StaticPopupDialogs["DELETE_GOOD_ITEM"], "OnShow", function(self)
        if MUIDB.General.Enabled and MUIDB.General.Delete then
            self.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)
        end
    end)
end