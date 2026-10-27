bettermouse)
    name="BetterMouse"
    type="zip"
    # the vendor page links the current zip; the version is in the file name (BetterMouse.1.7.9010.zip = CFBundleShortVersionString 1.7, build 9010)
    bettermouseURL="$(curl -fsL --connect-timeout 15 --max-time 30 "https://better-mouse.com/" | grep -oE 'https://better-mouse\.com/wp-content/uploads/BetterMouse\.[0-9.]+\.zip' | sort -u | sed -E 's/^(.*BetterMouse\.)([0-9.]+)\.zip$/\2 &/' | sort -V | tail -1 | cut -d' ' -f2)"
    downloadURL="${bettermouseURL}"
    appNewVersion="$(echo "${bettermouseURL}" | sed -E 's/.*BetterMouse\.([0-9]+\.[0-9]+)\.[0-9]+\.zip/\1/')"
    expectedTeamID="85C2C89SJH"
    ;;
