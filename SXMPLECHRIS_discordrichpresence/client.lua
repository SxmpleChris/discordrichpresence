Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        SetDiscordAppId(1202270637868208208)
        SetRichPresence(PlayerName.." | ID: "..id.."") -- This will take the player name and the Id
        -- Here you will have to put the image name for the "large" icon.
        -- You can create one by go to Rich Presence/Art Assets tab in your application and  click Add Image(s)
        -- The Paramater is your Image key that you uploaded (you can change it too once you upload)
        SetDiscordRichPresenceAsset('projektdeutschland')
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('Projekt Deutschland')
        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Beitreten", "fivem://connect/br5mgl")
        --You can add more Natives Here vvv
        SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/rS57VRsmvk")
        -- Updates every 30 seconds
        Citizen.Wait(30000)
    end
end)
