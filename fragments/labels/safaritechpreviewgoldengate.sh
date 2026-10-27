safaritechpreviewgoldengate)
    # Safari Technology Preview built for macOS 27. Label safaritechpreview picks the build for the running macOS.
    # Apple's page links one build per macOS version.
    name="Safari Technology Preview"
    type="pkgInDmg"
    downloadURL=$(curl -fsL "https://developer.apple.com/safari/resources/" | tr '\n' ' ' | grep -oE 'https://secure-appldnld\.apple\.com/STP/[^" ]+\.dmg"[^"]{0,60}for macOS&nbsp;27' | head -1 | grep -oE '^https://[^" ]+\.dmg')
    appNewVersion=""
    expectedTeamID="Software Update"
    ;;
