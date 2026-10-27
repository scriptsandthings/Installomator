capacities)
    name="Capacities"
    type="dmg"
    appNewVersion=$(getJSONValue "$(curl -fsL https://formulae.brew.sh/api/cask/capacities.json)" "version")
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-${appNewVersion}-arm64.dmg"
    else
        downloadURL="https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-${appNewVersion}.dmg"
    fi
    expectedTeamID="4KZF53XCGH"
    ;;
