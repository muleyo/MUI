MUI_Repair = MUI:NewModule('MUI.General.Repair')

function MUI_Repair:OnInitialize()
    self.Frame = CreateFrame("Frame")

    self.Frame:HookScript("OnEvent", function()
        if CanMerchantRepair() then
            local cost = GetRepairAllCost()
            if cost > 0 then
                local money = GetMoney()
                if IsInGuild() and MUIDB.General.Repair == 3 then
                    local guildMoney = GetGuildBankWithdrawMoney()
                    if guildMoney > GetGuildBankMoney() then
                        guildMoney = GetGuildBankMoney()
                    end

                    if guildMoney > cost and CanGuildBankRepair() then
                        RepairAllItems(1)
                        print(format("|cfff07100Repair cost covered by G-Bank: %.1fg|r", cost * 0.0001))
                        return
                    end
                end

                if money > cost then
                    RepairAllItems()
                    print(format("|cffead000Repair cost: %.1fg|r", cost * 0.0001))
                else
                    print("Not enough gold to cover the repair cost.")
                end
            end
        end
    end)
end

function MUI_Repair:OnEnable()
    if MUIDB.General.Enabled and MUIDB.General.Repair ~= 1 then
        self.Frame:RegisterEvent("MERCHANT_SHOW")
    end
end

function MUI_Repair:OnDisable()
    self.Frame:UnregisterAllEvents()
end