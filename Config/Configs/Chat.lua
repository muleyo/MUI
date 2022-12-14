local Chat = MUI:NewModule('MUI.Config.Chat')

function Chat:OnEnable()
    Chat.config = {
        name = 'Chat',
        type = 'group',
        order = 11,
        childGroups = 'tab',
        args = {
            ChatHeader = {
                type = 'header',
                name = 'Chat',
                order = 1
            },
        }
    }
end