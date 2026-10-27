clearvpn)
    name="ClearVPN"
    type="dmg"
    downloadURL="https://dl.devmate.com/com.macpaw.clearvpn.macos-site-ver/ClearVPN.dmg"
    appNewVersion=$(curl -fsL "https://updateinfo.devmate.com/com.macpaw.clearvpn.macos-site-ver/updates.xml" | grep -oE 'shortVersionString="[^"]+"' | head -n 1 | sed -E 's/.*="([^"]+)"/\1/')
    expectedTeamID="S8EX82NJP6"
    ;;
