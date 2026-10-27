roblox)
    name="Roblox"
    type="zip"
    robloxJSON=$(curl -sfL "https://clientsettingscdn.roblox.com/v2/client-version/MacPlayer")
    appNewVersion=$(getJSONValue "$robloxJSON" "version")
    robloxVersion=$(getJSONValue "$robloxJSON" "clientVersionUpload")
    if [[ $(/usr/bin/arch) == "arm64" ]]; then
        downloadURL="https://setup.rbxcdn.com/mac/arm64/${robloxVersion}-RobloxPlayer.zip"
    else
        downloadURL="https://setup.rbxcdn.com/mac/${robloxVersion}-RobloxPlayer.zip"
    fi
    appName="RobloxPlayer.app"
    blockingProcesses=( RobloxPlayer )
    expectedTeamID="2CFABCH843"
    ;;
