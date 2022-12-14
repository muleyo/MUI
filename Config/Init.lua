mUI = LibStub("AceAddon-3.0"):NewAddon("mUI", "AceEvent-3.0", "AceConsole-3.0")

function mUI:OnInitialize()
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
    --self.db = LibStub("AceDB-3.0"):New("mUIDB", defaults, true)

    -- Assign DB to a global variable
    --mUIDB = self.db.profile

    function self:AddOptionsPanel(Path, Frame, Name)
      local Panels = self.OptionsPanels
    
      if not Panels then
        Panels = {Frames = {}}
        self.OptionsPanels = Panels
      end
    
      local Frames = Panels.Frames
    
      Frames[Path] = Frame
      Panels[Path] = Name
    end
end