snagit2025)
    name="Snagit"
    type="dmg"
    # Snagit 2025 only: the TechSmith appcast now serves the newest year, so pick Major 25 from the full version list
    allVersions=$(curl -fsL "https://www.techsmith.com/api/v/1/products/getallversions/100")
    appNewVersion=$(getJSONValue "${allVersions}" "filter(v => v.Major == 25).map(v => '20' + v.Major + '.' + v.Minor + '.' + v.Maintenance)[0]")
    versionID=$(getJSONValue "${allVersions}" "filter(v => v.Major == 25)[0].VersionID")
    relativePath=$(getJSONValue "$(curl -fsL "https://www.techsmith.com/api/v/1/products/getversioninfo/${versionID}")" "PrimaryDownloadInformation.RelativePath")
    downloadURL="https://download.techsmith.com${relativePath}snagit.dmg"
    expectedTeamID="7TQL462TU8"
    ;;
