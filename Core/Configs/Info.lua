local Info = MUI:NewModule('MUI.Config.Info')

function Info:OnEnable()
    Info.config = {
        name = 'Info',
        type = 'group',
        desc = 'Information about this AddOn',
        order = 1,
        childGroups = 'tab',
        args = {
            InfoHeader = {
                type = 'header',
                name = 'Info',
                order = 1
            },
            Logo = {
                name = ' ',
                type = 'description',
                image = [[Interface\Addons\MUI\Media\Textures\Images\Logo]],
                imageWidth = 240,
                imageHeight = 240,
                order = 14,
            },
            Info = {
                name = 'AddOn Info',
                type = 'description',
                fontSize = 'large',
                order = 3
            },
            Version = {
                name = 'Version: ' .. GetAddOnMetadata('MUI', 'version'),
                type = 'description',
                fontSize = 'medium',
                order = 4
            },
            Space1 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 5
            },
            Community = {
                name = 'Join the Community',
                type = 'description',
                fontSize = 'large',
                order = 6
            },
            Space2 = {
                name = ' ',
                type = 'description',
                fontSize = 'large',
                order = 7
            },
            Discord = {
                name = 'Discord',
                type = 'execute',
                desc = 'Join our community on Discord',
                width = 0.85,
                order = 8,
                func = function()
                    MUI:insertLink('https://discord.gg/bkNyszUb5q')
                end
            },
            Twitch = {
                name = 'Twitch',
                type = 'execute',
                desc = 'Follow muleyo on Twitch',
                width = 0.85,
                order = 9,
                func = function()
                    MUI:insertLink('https://twitch.tv/muleyo')
                end
            },
            Twitter = {
                name = 'Twitter',
                type = 'execute',
                desc = 'Follow muleyo on Twitter',
                width = 0.85,
                order = 10,
                func = function()
                    MUI:insertLink('https://twitter.com/realmuleyo')
                end
            },
            Curseforge = {
                name = 'CurseForge',
                type = 'execute',
                desc = 'Check us out on CurseForge',
                width = 0.85,
                order = 11,
                func = function()
                    MUI:insertLink('https://www.curseforge.com/wow/addons/mui-unleash-your-real-potential')
                end
            },
            Wago = {
                name = 'Wago',
                type = 'execute',
                desc = 'Check us out on Wago',
                width = 0.85,
                order = 12,
                func = function()
                    MUI:insertLink('https://addons.wago.io/addons/mui')
                end
            },
            Github = {
                name = 'GitHub',
                type = 'execute',
                desc = 'Check us out on GitHub',
                width = 0.85,
                order = 13,
                func = function()
                    MUI:insertLink('https://github.com/cleanlock/MUI')
                end
            }
        }
    }
end