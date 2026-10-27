downie)
    name="Downie 4"
    type="dmg"
    downloadURL="https://software.charliemonroe.net/trial/downie/v4/latest/"
    appNewVersion=$(curl -fsL "https://software.charliemonroe.net/trial/downie/v4/updates.xml" | grep -oE 'shortVersionString="[^"]+"' | head -n 1 | sed -E 's/.*="([^"]+)"/\1/')
    expectedTeamID="D43XN356JM"
    ;;
