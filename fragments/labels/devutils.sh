devutils)
    name="DevUtils"
    type="dmg"
    appNewVersion=$(curl -fsL "https://devutils.com/archives/appcast.xml" | grep -oE 'shortVersionString="[^"]+"' | tail -n 1 | sed -E 's/.*="([^"]+)"/\1/')
    downloadURL="https://devutils.com/archives/DevUtils-${appNewVersion}.dmg"
    expectedTeamID="432TM87K7L"
    ;;
