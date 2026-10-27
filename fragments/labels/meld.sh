meld)
    name="Meld"
    type="dmg"
    packageJSON=$(curl -sfL "https://gitlab.com/api/v4/projects/51547804/packages?package_name=meld_macos&order_by=created_at&sort=desc&per_page=1")
    packageVersion=$(getJSONValue "$packageJSON" "[0].version")
    appNewVersion=${packageVersion%%+*}
    if [[ $(/usr/bin/arch) == "arm64" ]]; then
        downloadURL="https://gitlab.com/api/v4/projects/51547804/packages/generic/meld_macos/${packageVersion}/Meld-${packageVersion}_arm64.dmg"
    else
        downloadURL="https://gitlab.com/api/v4/projects/51547804/packages/generic/meld_macos/${packageVersion}/Meld-${packageVersion}_x86_64.dmg"
    fi
    expectedTeamID="SW3D6BB6A6"
    ;;
