Citizen.CreateThread(function()
    while true do
        local PlayerName = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        SetDiscordAppId(0000000000000) -- Replace all Zero's with your Application ID (https://discord.com/developers)
        SetRichPresence(PlayerName.." | ID: "..id.."") -- This defines the players name and his ID, I suggest you do not change that.
        -- Here you will have to put the image name for the "large" icon.
        -- You can create one by go to Rich Presence/Art Assets tab in your application and  click Add Image(s)
        -- The Paramater is your Image name that you uploaded (you can change it too once you upload)
        SetDiscordRichPresenceAsset('EXAMPLEIMAGE')
        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('YOURPROJECT')
        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        SetDiscordRichPresenceAction(0, "Connect", "fivem://connect/XXXXX")
        --You can add more Natives Here vvv
        SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/INVITE")
        -- Updates every 30 seconds
        Citizen.Wait(30000)
    end
end)
