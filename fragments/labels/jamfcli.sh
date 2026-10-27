jamfcli|\
jamf-cli)
    name="jamf-cli"
    type="pkg"
    packageID="com.jamf.concepts.jamf-cli"
    downloadURL=$(downloadURLFromGit Jamf-Concepts jamf-cli)
    appNewVersion=$(versionFromGit Jamf-Concepts jamf-cli)
    expectedTeamID="483DWKW443"
    blockingProcesses=( NONE )
    ;;
