earthdatadownload)
    # NASA Earthdata Download; separate arm64 and x64 dmgs on every GitHub release
    name="Earthdata Download"
    type="dmg"
    if [[ $(arch) == "arm64" ]]; then
        archiveName="Earthdata-Download-arm64.dmg"
    else
        archiveName="Earthdata-Download-x64.dmg"
    fi
    downloadURL="$(downloadURLFromGit nasa earthdata-download)"
    appNewVersion="$(versionFromGit nasa earthdata-download)"
    expectedTeamID="82A95CK2HC"
    ;;
