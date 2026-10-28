qgisltr)
    name="QGIS-LTR"
    type="dmg"
    # The LTR disk image holds QGIS.app; Installomator copies it under that name.
    appName="QGIS.app"
    qgisJson=$(curl -fs "https://raw.githubusercontent.com/qgis/QGIS-Website/refs/heads/main/data/conf.json")
    downloadURL=$(getJSONValue "$qgisJson" "ltr_dmg")
    appNewVersion=$(getJSONValue "$qgisJson" "ltrrelease")
    expectedTeamID="4F7N4UDA22"
    ;;
