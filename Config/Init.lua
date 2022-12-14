MUI = LibStub('AceAddon-3.0'):NewAddon('MUI', 'AceEvent-3.0', 'AceConsole-3.0')

function MUI:OnInitialize()
    -- Database Default profile
    local defaults = {
        profile = {
          width = 72,
          positionx = 0,
          positiony = -55,
          texture = [[Interface\RaidFrame\Raid-Bar-Hp-Fill]],
          enabled = true
        }
    }

    -- Register Database
    --self.db = LibStub('AceDB-3.0'):New('MUIDB', defaults, true)

    -- Assign DB to a global variable
    --MUIDB = self.db.profile

    
end

function MUI:insertLink(url)
  local editbox = ChatEdit_ChooseBoxForSend()
  ChatEdit_DeactivateChat(editbox)
  ChatEdit_ActivateChat(editbox)
  editbox:Insert(url)
  editbox:HighlightText()
end