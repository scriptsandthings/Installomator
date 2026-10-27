qobuz)
    name="Qobuz"
    type="dmg"
    qobuzPage=$(curl -sfL "https://www.qobuz.com/applications")
    if [[ $(/usr/bin/arch) == "arm64" ]]; then
        downloadURL=$(printf '%s' "$qobuzPage" | grep -oE 'https://desktop\.qobuz\.com/releases/darwin/arm64/[^"]+/Qobuz\.dmg' | head -1)
    else
        downloadURL=$(printf '%s' "$qobuzPage" | grep -oE 'https://desktop\.qobuz\.com/releases/darwin/x64/[^"]+/Qobuz\.dmg' | head -1)
    fi
    appNewVersion=$(echo "$downloadURL" | sed -E 's|.*/([^/]+)/Qobuz\.dmg|\1|')
    expectedTeamID="7UCG7QB3B7"
    ;;
