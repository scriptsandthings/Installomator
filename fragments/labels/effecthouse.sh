effecthouse)
    # the vendor download endpoint answers 303 with the current dmg; entryPoint=104 is the value the Homebrew cask livecheck sends
    name="Effect House"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        ehArch="arm64"
    else
        ehArch="x86_64"
    fi
    downloadURL=$(curl -s -o /dev/null -D - --connect-timeout 15 --max-time 30 -X POST -d "osType=macOS&arch=${ehArch}&entryPoint=104" "https://effecthouse.tiktok.com/api/web/download" | grep -i '^location:' | tr -d '\r' | awk '{print $2}')
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*Effect_House_v([0-9]+\.[0-9]+\.[0-9]+)\..*/\1/')
    expectedTeamID="BZ78BDHTNC"
    ;;
