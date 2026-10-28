qgis-pr)
    name="QGIS"
    type="dmg"
    # The release disk image names the app after its version (QGIS-final-4_2_3.app), so each
    # release installs next to the one before it.
    qgisJson=$(curl -fs "https://raw.githubusercontent.com/qgis/QGIS-Website/refs/heads/main/data/conf.json")
    downloadURL=$(getJSONValue "$qgisJson" "lr_dmg")
    appNewVersion=$(getJSONValue "$qgisJson" "release")
    appName="QGIS-final-${appNewVersion//./_}.app"
    expectedTeamID="4F7N4UDA22"
    ;;
