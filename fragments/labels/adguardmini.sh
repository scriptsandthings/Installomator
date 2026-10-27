adguardmini)
    name="AdGuard Mini"
    type="zip"
    downloadURL="https://static.adtidy.org/macmini/release/AdGuardMini.app.zip"
    appNewVersion="$(curl -fsL "https://static.adtidy.org/macmini/release/adguard-mini-appcast.xml" | grep -o '<sparkle:shortVersionString>[^<]*</sparkle:shortVersionString>' | sed -E 's/<[^>]+>//g' | head -1)"
    expectedTeamID="TC3Q7MAJXF"
    ;;
