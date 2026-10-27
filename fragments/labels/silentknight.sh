silentknight)
    # SilentKnight 2.x (Intel and Apple silicon, macOS 11.5 or later). SilentKnight 3 is the label silentknight3.
    name="SilentKnight"
    type="zip"
    folderName=$(curl -fs "https://eclecticlight.co/downloads/" | grep -o 'https://[^"]*silentknight[0-9]*.zip' | sort -V | tail -n 1 | sed 's|.*/\(silentknight[0-9]*\)\.zip|\1|')
    appName="${folderName}/SilentKnight.app"
    downloadURL="https://eclecticlight.co/wp-content/uploads/$(curl -fs "https://eclecticlight.co/downloads/" | grep -o '[0-9]\{4\}/[0-9]\{2\}/silentknight[0-9]*.zip' | sort -V | tail -n 1)"
    # the file name carries the version without its dot (silentknight214.zip is 2.14)
    versionDigits="${folderName//[^0-9]/}"
    appNewVersion="${versionDigits:0:1}.${versionDigits:1}"
    expectedTeamID="QWY4LRW926"
    ;;
