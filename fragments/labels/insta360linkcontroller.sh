insta360linkcontroller)
    name="Insta360 Link Controller"
    type="pkg"
    # Insta360 download API (the Homebrew cask livecheck source); file path holds a per-release hash.
    # Keeps the signed-or-plain macOS .pkg entries named Insta360LinkController_<ver>(build<n>).pkg and takes the highest.
    insta360Line="$(curl -fsL --connect-timeout 15 --max-time 30 "https://openapi.insta360.com/app/appDownload/getGroupApp?group=insta360-link&X-Language=en-us" | grep -oE 'https://wassets\.insta360\.com/common/[0-9a-f]+/Insta360LinkController_[0-9.]+\(build[0-9]+\)\.pkg' | sort -u | sed -E 's/^.*LinkController_([0-9.]+)\(build([0-9]+)\)\.pkg$/\1.\2 &/' | sort -V | tail -1)"
    downloadURL="$(echo "${insta360Line}" | cut -d' ' -f2)"
    appNewVersion="$(echo "${insta360Line}" | sed -E 's/^([0-9]+\.[0-9]+\.[0-9]+)\.[0-9]+ .*/\1/')"
    expectedTeamID="UBX9CH9GDX"
    ;;
