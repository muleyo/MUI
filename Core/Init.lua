MUI = LibStub('AceAddon-3.0'):NewAddon('MUI', 'AceEvent-3.0', 'AceConsole-3.0')

function MUI:OnInitialize()
    -- Database Default profile
    local defaults = {
        profile = {
            General = {
                Enabled = true,
                Theme = 2,
                Font = 1,
                Sell = true,
                Delete = true,
                Invite = false,
                Itemlevel = true,
                Cinematic = true,
                XPBar = true,
                Talkinghead = true,
                Errors = true,
                Repair = 2
            },
            Unitframes = {
                Enabled = true,
                Style = 'Blizzard',
                Texture = '',
                Classcolor = true,
                Pvpbadge = true,
                Hitindicator = true,
                Combatindicator = false,
                Classbar = false
            },
            PartyRaidFrames = {
                Enabled = true,
                Texture = '',
                Resize = 'Disabled',
                Height = 100,
                Width = 130
            },
            BuffsDebuffs = {
                Enabled = true,
                Buffsize = 15,
                Debuffsize = 15,
                Collapsebutton = false
            },
            Nameplates = {
                Enabled = false,
                Texture = '',
                Hptext = true,
                Casttime = true,
                Arena = true,
                Server = true,
                Totems = true,
                Debuffs = true,
                Classcolor = true
            },
            Actionbars = {
                Enabled = true,
                Hotkey = false,
                Macro = false,
                Flash = false,
                Range = false,
                Textsize = 12,
                Bagbuttons = 'Show always',
                Micromenu = 'Show always',
                Bar1 = false,
                Bar2 = false,
                Bar3 = false,
                Bar4 = false,
                Bar5 = false,
                Bar6 = false,
                Bar7 = false,
                Bar8 = false,
                Stancebar = false,
                Petbar = false
            },
            Castbars = {
                Enabled = true,
                Style = 'MUI',
                Spellicon = true,
                Casttime = true
            },
            Tooltips = {
                Enabled = true,
                Style = 'MUI',
                Combat = false,
                Hptop = true,
                Mouseanchor = false
            },
            MapMinimap = {
                Enabled = true,
                Coordinates = true,
                Opacity = 1,
                Time = true,
                Calendar = true,
                Mouseover = true,
                Tracking = true
            },
            Chat = {
                Enabled = true,
                Style = 'MUI',
                Links = true,
                Editontop = true,
                Classcolors = true
            },
            Miscellaneous = {
                Enabled = true,
                Interrupt = true,
                Localert = true,
                Tabbinder = false,
                Dampening = false,
                Surrender = false,
                Safequeue = false
            }
        }
    }

    -- Register Database
    self.db = LibStub('AceDB-3.0'):New('MUIDB', defaults, true)

    -- Assign DB to a global variable
    MUIDB = self.db.profile
end

function MUI:insertLink(url)
  local editbox = ChatEdit_ChooseBoxForSend()
  ChatEdit_DeactivateChat(editbox)
  ChatEdit_ActivateChat(editbox)
  editbox:Insert(url)
  editbox:HighlightText()
end