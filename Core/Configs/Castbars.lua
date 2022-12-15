local Castbars = MUI:NewModule('MUI.Config.Castbars')

function Castbars:OnEnable()
    Castbars.config = {
        name = 'Castbars',
        type = 'group',
        order = 8,
        childGroups = 'tab',
        args = {
            CastbarsHeader = {
                type = 'header',
                name = 'Castbars',
                order = 1
            },
        }
    }
end