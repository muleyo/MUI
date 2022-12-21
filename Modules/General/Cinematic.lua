MUI_Cinematic = MUI:NewModule('MUI.General.Cinematic')

function MUI_Cinematic:OnInitialize()
    self.Frame = CreateFrame("Frame")

    self.Frame:HookScript("OnEvent", function(self, event)
        if event == "CINEMATIC_START" then
            CinematicFrame_CancelCinematic()
            print("|cff009cffMUI|r: Skipped Cinematic.")
        elseif event == "PLAY_MOVIE" then
            GameMovieFinished()
            print("|cff009cffMUI|r: Skipped Cinematic.")
        end
    end)
end

function MUI_Cinematic:OnEnable()
    if MUIDB.General.Enabled and MUIDB.General.Cinematic then
        self.Frame:RegisterEvent("CINEMATIC_START")
        self.Frame:RegisterEvent("PLAY_MOVIE")
    end
end

function MUI_Cinematic:OnDisable()
    self.Frame:UnregisterAllEvents()
end