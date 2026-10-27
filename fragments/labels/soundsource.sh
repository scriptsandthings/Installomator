soundsource)
    # SoundSource 6.x; upstream rogueamoebasoundsource5 sends version=5000000 and is served 5.3.5, a downgrade
    name="SoundSource"
    type="zip"
    raSysVer="$(sw_vers -productVersion | sed 's/\.//g')"
    raVerDetails="$(curl -fs --connect-timeout 15 --max-time 30 "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.soundsource&system=${raSysVer}&version=6000000")"
    downloadURL="$(echo "${raVerDetails}" | xpath 'string(//rss/channel/item/enclosure/@url)' 2>/dev/null)"
    appNewVersion="$(echo "${raVerDetails}" | xpath 'string(//rss/channel/item/*[local-name()="version"])' 2>/dev/null)"
    expectedTeamID="7266XEXAPM"
    ;;
