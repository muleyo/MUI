local Actionbars = MUI:NewModule('MUI.Config.Actionbars')

function Actionbars:OnEnable()
    Actionbars.config = {
        name = 'Actionbars',
        type = 'group',
        order = 7,
        childGroups = 'tab',
        args = {
            ActionbarsHeader = {
                type = 'header',
                name = 'Actionbars',
                order = 1
            },
        }
    }
end