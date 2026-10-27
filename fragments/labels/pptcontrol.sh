pptcontrol)
    name="PPTControl Desktop"
    type="dmg"
    downloadURL="https://downloads.pptcontrol.app/macos/latest"
    appNewVersion=$(curl -sILf "$downloadURL" | grep -i "^location" | sed -E 's/.*PPTControl-Desktop-([0-9.]+)\.dmg.*/\1/' | tr -d '\r' | tail -1)
    expectedTeamID="S5XDVPQ9J6"
    ;;
