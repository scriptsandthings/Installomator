positron)
    name="Positron"
    type="dmg"
    positronReleaseTag=$(curl -fsSL "https://api.github.com/repos/posit-dev/positron/releases/latest" | awk -F '"' '/"tag_name":/ { print $4; exit }')
    archiveName="Positron-.*-arm64.dmg"
    appNewVersion="$positronReleaseTag"
    downloadURL="https://cdn.posit.co/positron/releases/mac/arm64/Positron-${positronReleaseTag}-arm64.dmg"
    expectedTeamID="FYF2F5GFX4"
    ;;
