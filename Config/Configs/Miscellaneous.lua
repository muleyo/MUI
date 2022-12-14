local Miscellaneous = MUI:NewModule('MUI.Config.Miscellaneous')

function Miscellaneous:OnEnable()
    Miscellaneous.config = {
        name = 'Miscellaneous',
        type = 'group',
        order = 12,
        childGroups = 'tab',
        args = {
            MiscellaneousHeader = {
                type = 'header',
                name = 'Miscellaneous',
                order = 1
            },
        }
    }
end