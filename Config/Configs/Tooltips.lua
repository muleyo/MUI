local Tooltips = MUI:NewModule('MUI.Config.Tooltips')

function Tooltips:OnEnable()
    Tooltips.config = {
        name = 'Tooltips',
        type = 'group',
        order = 9,
        childGroups = 'tab',
        args = {
            TooltipsHeader = {
                type = 'header',
                name = 'Tooltips',
                order = 1
            },
        }
    }
end