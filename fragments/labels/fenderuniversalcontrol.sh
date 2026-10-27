fenderuniversalcontrol)
    # PreSonus Universal Control v5 is renamed Fender Universal Control; the app is still /Applications/Universal Control.app but its bundle id is now com.fender.ucapp (Macs on v4 carry com.presonus.ucapp)
    # the asset id in the download path changes with every release, so read the newest dmg link off a product page, as the Homebrew cask livecheck does
    name="Universal Control"
    type="pkgInDmg"
    packageID="presonus.pkg.Universal.Control.app"
    downloadURL=$(curl -fsL --connect-timeout 15 --max-time 60 -A "Mozilla/5.0" "https://www.presonus.com/products/audiobox-usb-96-studio" | grep -oE 'https://www\.fmicassets\.com/Damroot/Original/[0-9]+/Fender_Universal_Control_v[0-9_]+\.dmg' | sort -u | sort -t/ -k6 -n | tail -1)
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*_v([0-9]+)_([0-9]+)_([0-9]+)_[0-9]+\.dmg/\1.\2.\3/')
    expectedTeamID="64H3QYW26T"
    ;;
