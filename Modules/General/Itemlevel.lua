MUI_Itemlevel = MUI:NewModule('MUI.General.Itemlevel')

function MUI_Itemlevel:OnInitialize()
    -- Character Frame - Start --
    self.Frame = CreateFrame("Frame", nil, _G.PaperDollFrame)
    local equipped = {} -- Table to store equiped items
    local S_ITEM_LEVEL = "^" .. gsub(ITEM_LEVEL, "%%d", "(%%d+)")
    local scantip = CreateFrame("GameTooltip", "iLvlScanningTooltip", nil, "GameTooltipTemplate")
    scantip:SetOwner(UIParent, "ANCHOR_NONE")

    local function createFontStrings()
        local function _stringFactory(parent)
            local s = self.Frame:CreateFontString(nil, "OVERLAY", "SystemFont_Outline")
            s:SetPoint("CENTER", parent, "BOTTOM", 0, 8)

            return s
        end

        self.Frame:SetFrameLevel(_G.CharacterHeadSlot:GetFrameLevel())

        self.Frame[1] = _stringFactory(_G.CharacterHeadSlot)
        self.Frame[2] = _stringFactory(_G.CharacterNeckSlot)
        self.Frame[3] = _stringFactory(_G.CharacterShoulderSlot)
        self.Frame[5] = _stringFactory(_G.CharacterChestSlot)
        self.Frame[6] = _stringFactory(_G.CharacterWaistSlot)
        self.Frame[7] = _stringFactory(_G.CharacterLegsSlot)
        self.Frame[8] = _stringFactory(_G.CharacterFeetSlot)
        self.Frame[9] = _stringFactory(_G.CharacterWristSlot)
        self.Frame[10] = _stringFactory(_G.CharacterHandsSlot)
        self.Frame[11] = _stringFactory(_G.CharacterFinger0Slot)
        self.Frame[12] = _stringFactory(_G.CharacterFinger1Slot)
        self.Frame[13] = _stringFactory(_G.CharacterTrinket0Slot)
        self.Frame[14] = _stringFactory(_G.CharacterTrinket1Slot)
        self.Frame[15] = _stringFactory(_G.CharacterBackSlot)
        self.Frame[16] = _stringFactory(_G.CharacterMainHandSlot)
        self.Frame[17] = _stringFactory(_G.CharacterSecondaryHandSlot)

        self.Frame:Hide()
    end

    local function getItemLevel(slotId, unit)
        local itemLevel
        local hasItem = scantip:SetInventoryItem(unit, slotId)
        if not hasItem then return nil end

        for i = 2, scantip:NumLines() do
            local text = _G["iLvlScanningTooltipTextLeft" .. i]:GetText()
            if text and text ~= "" then
                itemLevel = itemLevel or strmatch(text, S_ITEM_LEVEL)

                if itemLevel then
                    return tonumber(itemLevel)
                end
            end
        end

        return itemLevel
    end

    local function updateItems(unit, frame)
        for i = 1, 17 do
            local itemLink = GetInventoryItemLink(unit, i)
            if i ~= 4 then
                if itemLink then
                    if GetItemInfo(itemLink) then
                        local _, _, quality = GetItemInfo(itemLink)
                        local _, _, _, hex = GetItemQualityColor(quality)
                        local itemLevel = getItemLevel(i, "player")
                        itemLevel = itemLevel or ""
                        frame[i]:SetFormattedText('|c%s%s|r', hex, itemLevel or '?')
                    end
                else
                    frame[i]:SetText("")
                end
            end
        end
    end

    function self:OnEvent(frame, event, ...) -- Event handler
        if event == "ADDON_LOADED" and (...) == "Blizzard_InspectUI" then
            frame:UnregisterEvent(event)

            -- iLevel number frame for Inspect
            createFontStrings()
            createFontStrings = nil
        elseif event == "PLAYER_LOGIN" then
            frame:UnregisterEvent(event)

            createFontStrings()
            createFontStrings = nil

            _G.PaperDollFrame:HookScript("OnShow", function()
                self.Frame:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
                self.Frame:RegisterEvent("ARTIFACT_UPDATE")
                self.Frame:RegisterEvent("SOCKET_INFO_UPDATE")
                self.Frame:RegisterEvent("COMBAT_RATING_UPDATE")
                updateItems("player", self.Frame)
                self.Frame:Show()
            end)

            _G.PaperDollFrame:HookScript("OnHide", function()
                self.Frame:UnregisterEvent("PLAYER_EQUIPMENT_CHANGED")
                self.Frame:UnregisterEvent("ARTIFACT_UPDATE")
                self.Frame:UnregisterEvent("SOCKET_INFO_UPDATE")
                self.Frame:UnregisterEvent("COMBAT_RATING_UPDATE")
                self.Frame:Hide()
            end)
        elseif event == "PLAYER_EQUIPMENT_CHANGED" or event == "ITEM_UPGRADE_MASTER_UPDATE"
            or event == "ARTIFACT_UPDATE" or event == "SOCKET_INFO_UPDATE" or event == "COMBAT_RATING_UPDATE" then
            if (...) == 16 then
                equipped[16] = nil
                equipped[17] = nil
            end

            updateItems("player", self.Frame)
        end
    end
    -- Character Frame - End --

    -- Inspect Frame - Start --
    local alreadyInitialized = false
    local Slots = {
        "HeadSlot", "NeckSlot", "ShoulderSlot", "BackSlot", "ChestSlot", "WristSlot",
        "HandsSlot", "WaistSlot", "LegsSlot", "FeetSlot", "Finger0Slot", "Finger1Slot",
        "Trinket0Slot", "Trinket1Slot", "MainHandSlot", "SecondaryHandSlot"
    }
    local SlotIDs = {}
    for _, slotName in ipairs(Slots) do
        local id = GetInventorySlotInfo(slotName)
        SlotIDs[slotName] = id
    end
    local ItemLinks = {}
    local InspectFrameList = {}
    local InspectFontStrings = {}


    local function initialize()
        if InspectModelFrame == nil then
            return
        end

        InspectFrameList = {
            InspectHeadSlot, InspectNeckSlot, InspectShoulderSlot, InspectBackSlot, InspectChestSlot,
            InspectWristSlot,
            InspectHandsSlot, InspectWaistSlot, InspectLegsSlot, InspectFeetSlot, InspectFinger0Slot,
            InspectFinger1Slot,
            InspectTrinket0Slot, InspectTrinket1Slot, InspectMainHandSlot, InspectSecondaryHandSlot
        }

        for _, f in ipairs(InspectFrameList) do
            local frameName = f:GetName()
            InspectFontStrings[frameName] = f:CreateFontString(nil, "OVERLAY", "SystemFont_Outline")
            InspectFontStrings[frameName]:SetPoint("CENTER", frameName, "BOTTOM", 0, 8)
        end

        alreadyInitialized = true
    end

    -- Heirloom gear uses the level of the inspecting player; this changes it to the inspected player
    local ITEMLINK_PATTERN_LINKLEVEL = "(item:" .. ("[^:]*:"):rep(8) .. ")(%d*)(.+)";
    local function FixHeirloomLevel(link, level)
        return (link and level) and link:gsub(ITEMLINK_PATTERN_LINKLEVEL, "%1" .. level .. "%3") or link;
    end

    local function scanGear()
        local level = UnitLevel("target")
        for _, slotName in ipairs(Slots) do
            local link = GetInventoryItemLink("target", SlotIDs[slotName])
            ItemLinks[slotName] = FixHeirloomLevel(link, level)
        end
    end

    local function updateText()
        if InspectModelFrame == nil then
            return
        end

        for _, slotName in ipairs(Slots) do
            local frameName = "Inspect" .. slotName
            local slotilvl = ""
            if ItemLinks[slotName] then
                slotilvl = GetDetailedItemLevelInfo(ItemLinks[slotName])
                local _, _, quality = GetItemInfo(ItemLinks[slotName])
                local _, _, _, hex = GetItemQualityColor(quality)
                InspectFontStrings[frameName]:SetFormattedText('|c%s%s|r', hex, slotilvl or '?')
                --InspectFontStrings[frameName]:SetTextColor(1,1,0)
            else
                InspectFontStrings[frameName]:SetText("")
            end
        end
    end

    function self:Main()
        if CanInspect("target") then
            if not (alreadyInitialized) then
                initialize()
            end
            scanGear()
            updateText()
        end
    end

    function self:newTarget()
        if InspectModelFrame == nil then
            return
        end
        if InspectFrame:IsVisible() and CanInspect("target") then
            InspectUnit("target")
        end
    end

    self.inspectFrame = CreateFrame("Frame", nil, UIParent)
    self.newTargetFrame = CreateFrame("Frame", nil, UIParent)
    -- Inspect Frame - End --

    -- Container Frame - Start --
    function self:MerchantItemlevel()
        local numItems = GetMerchantNumItems()

        for i = 1, MERCHANT_ITEMS_PER_PAGE do
            local index = (MerchantFrame.page - 1) * MERCHANT_ITEMS_PER_PAGE + i
            if index > numItems then return end

            local button = _G["MerchantItem" .. i .. "ItemButton"]
            if button and button:IsShown() then
                if not button.text then
                    button.text = button:CreateFontString(nil, "OVERLAY", "SystemFont_Outline")
                    button.text:SetPoint("CENTER", button, "BOTTOM", 0, 8)
                else
                    button.text:SetText("")
                end

                local itemLink = GetMerchantItemLink(index)
                if itemLink then
                    local _, _, quality, itemlevel, _, _, _, _, _, _, _, itemClassID = GetItemInfo(itemLink)
                    if (itemlevel and itemlevel > 1) and (quality and quality > 1) and
                        (itemClassID == LE_ITEM_CLASS_WEAPON or itemClassID == LE_ITEM_CLASS_ARMOR) then
                        local _, _, _, color = GetItemQualityColor(quality)
                        button.text:SetFormattedText('|c%s%s|r', color, itemlevel or '?')
                    end
                end
            end
        end
    end

    function self:CreateItemLevelString(button)
        button.levelString = button:CreateFontString(nil, "OVERLAY")
        button.levelString:SetFont(STANDARD_TEXT_FONT, 13, "OUTLINE")
        button.levelString:SetPoint("CENTER", button, "BOTTOM", 0, 8)
    end

    function self:CheckContainerItems(item)
        local _, _, _, equipLoc, _, itemClass, itemSubClass = GetItemInfoInstant(item:GetItemID())
        return (
            itemClass == Enum.ItemClass.Weapon or
                itemClass == Enum.ItemClass.Armor or
                (itemClass == Enum.ItemClass.Gem and itemSubClass == Enum.ItemGemSubclass.Artifactrelic)
            )
    end

    function self:UpdateBagButton(button, item)
        if item:IsItemEmpty() then return end
        item:ContinueOnItemLoad(function()
            if not self:CheckContainerItems(item) then return end
            local itemID = item:GetItemID()
            local link = item:GetItemLink()
            local quality = item:GetItemQuality()
            local _, _, _, equipLoc, _, itemClass, itemSubClass = GetItemInfoInstant(itemID)
            local minLevel = link and select(5, GetItemInfo(link or itemID))
            if not item:GetCurrentItemLevel() then
                button.levelString:Hide()
            else
                self:CreateItemLevelString(button)
                local _, _, _, hex = GetItemQualityColor(quality)
                button.levelString:SetFormattedText('|c%s%s|r', hex, item:GetCurrentItemLevel() or '?')
                button.levelString:Show()
            end
        end)
    end

    function self:UpdateContainerButton(button, bag, slot)
        if button.levelString then button.levelString:Hide() end

        local item = Item:CreateFromBagAndSlot(bag, slot or button:GetID())
        self:UpdateBagButton(button, item)
    end
    -- Container Frame - End --
end

function MUI_Itemlevel:OnEnable()
    if MUIDB.General.Enabled and MUIDB.General.Itemlevel then
        -- Character Frame --
        self.Frame:SetScript("OnEvent", function(frame, event, ...)
            self:OnEvent(frame, event, ...)
        end)
        self.Frame:GetScript("OnEvent")(self.Frame, "PLAYER_LOGIN")

        -- Inspect Frame --
        self.inspectFrame:RegisterEvent("INSPECT_READY")
        self.inspectFrame:SetScript("OnEvent", self.Main)

        self.newTargetFrame:RegisterEvent("PLAYER_TARGET_CHANGED")
        self.newTargetFrame:SetScript("OnEvent", self.newTarget)

        -- Container Frame --
        hooksecurefunc("MerchantFrame_UpdateMerchantInfo", self.MerchantItemlevel)

        if _G.ContainerFrame_Update then
            hooksecurefunc("ContainerFrame_Update", function(container)
                local bag = container:GetID()
                local name = container:GetName()
                for i = 1, container.size, 1 do
                    local button = _G[name .. "Item" .. i]
                    self:UpdateContainerButton(button, bag)
                end
            end)
        else
            local update = function(frame)
                for _, itemButton in frame:EnumerateValidItems() do
                    self:UpdateContainerButton(itemButton, itemButton:GetBagID(), itemButton:GetID())
                end
            end
            hooksecurefunc(ContainerFrameCombinedBags, "UpdateItems", update)
            for _, frame in ipairs(UIParent.ContainerFrames) do
                hooksecurefunc(frame, "UpdateItems", update)
            end
        end
    else
        return
    end
end

function MUI_Itemlevel:OnDisable()
    print("|cff009cffMUI|r: To fully disable the feature 'Itemlevel', please reload your UI.")
end