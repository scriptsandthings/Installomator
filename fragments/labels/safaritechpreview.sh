safaritechpreview)
    # Safari Technology Preview built for the macOS this Mac runs. Labels safaritechpreviewtahoe,
    # safaritechpreviewsequoia and safaritechpreviewgoldengate pin one build.
    # Apple's page links one build per macOS version.
    name="Safari Technology Preview"
    type="pkgInDmg"
    stpOS=${installedOSversion%%.*}
    downloadURL=$(curl -fsL "https://developer.apple.com/safari/resources/" | tr '\n' ' ' | grep -oE 'https://secure-appldnld\.apple\.com/STP/[^" ]+\.dmg"[^"]{0,60}for macOS&nbsp;'"${stpOS}" | head -1 | grep -oE '^https://[^" ]+\.dmg')
    appNewVersion=""
    expectedTeamID="Software Update"
    ;;
