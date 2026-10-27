adapter)
    name="Adapter"
    type="dmg"
    downloadURL="https://macroplant.com/adapter/download?os=mac"
    appNewVersion="$(curl -fsIL "$downloadURL" | grep -i '^location' | tail -1 | sed -E 's/.*Adapter-([0-9.]+)\.dmg.*/\1/')"
    expectedTeamID="H2C3XE4Q3U"
    ;;
