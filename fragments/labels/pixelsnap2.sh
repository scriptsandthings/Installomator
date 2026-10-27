pixelsnap2)
    # vendor direct build (pl.maketheweb.pixelsnap2), not the Setapp build (pl.maketheweb.pixelsnap2-setapp); needs a PixelSnap licence key entered in the app
    # the dmg name carries the version, so read the newest version off the Sparkle appcast (first item), as the Homebrew cask livecheck does
    name="PixelSnap 2"
    type="dmg"
    appNewVersion=$(curl -fsL --connect-timeout 15 --max-time 30 "https://updates.getpixelsnap.com/v2/appcast.xml" | grep -m1 -oE '<sparkle:shortVersionString>[0-9.]+' | sed 's/.*>//')
    downloadURL="https://updates.getpixelsnap.com/v2/PixelSnap-2-${appNewVersion}.dmg"
    expectedTeamID="AFJU4P8ZV4"
    ;;
