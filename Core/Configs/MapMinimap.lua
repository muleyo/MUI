local MapMinimap = MUI:NewModule('MUI.Config.MapMinimap')

function MapMinimap:OnEnable()
    MapMinimap.config = {
        name = 'Map & Minimap',
        type = 'group',
        order = 10,
        childGroups = 'tab',
        args = {
            MapMinimapHeader = {
                type = 'header',
                name = 'Map & Minimap',
                order = 1
            },
        }
    }
end