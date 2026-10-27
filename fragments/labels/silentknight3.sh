silentknight3)
    # SilentKnight 3.x (Apple silicon only, macOS 15.6 or later). SilentKnight 2 is the label silentknight.
    name="SilentKnight3"
    type="zip"
    folderName=$(curl -fs "https://eclecticlight.co/downloads/" | grep -o '[0-9]\{4\}/[0-9]\{2\}/sk3[0-9]*\.zip' | sort -V | tail -n 1)
    downloadURL="https://eclecticlight.co/wp-content/uploads/${folderName}"
    folderName="${${folderName##*/}%.zip}"
    appName="${folderName}/SilentKnight3.app"
    # the file name carries the version without its dot (sk302.zip is 3.02)
    versionDigits="${folderName//[^0-9]/}"
    appNewVersion="${versionDigits:0:1}.${versionDigits:1}"
    expectedTeamID="QWY4LRW926"
    ;;
