MUI_Sell = MUI:NewModule('MUI.General.Sell')

function MUI_Sell:OnInitialize()
    self.Frame = CreateFrame("Frame")
end

function MUI_Sell:OnEnable()
    if MUIDB.General.Enabled and MUIDB.General.Sell then
        self.Frame:RegisterEvent("MERCHANT_SHOW")

        self.Frame:HookScript("OnEvent", function()
            local bag, slot
            for bag = 0, 4 do
                for slot = 0, C_Container.GetContainerNumSlots(bag) do
                    local link = C_Container.GetContainerItemLink(bag, slot)
                    if link and (select(3, GetItemInfo(link)) == 0) then
                        C_Container.UseContainerItem(bag, slot)
                    end
                end
            end
        end)
    end
end

function MUI_Sell:OnDisable()
    self.Frame:UnregisterAllEvents()
end