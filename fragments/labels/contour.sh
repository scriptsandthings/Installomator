contour)
    name="contour"
    type="pkg"
    packageID="io.macadmins.contour.pkg"
    downloadURL=$(downloadURLFromGit macadmins contour)
    appNewVersion=$(curl -sfL "https://api.github.com/repos/macadmins/contour/releases/latest" | awk -F'"' '/tag_name/{gsub(/^v/,"",$4); print $4; exit}')
    expectedTeamID="T4SK8ZXCXG"
    blockingProcesses=( NONE )
    ;;
