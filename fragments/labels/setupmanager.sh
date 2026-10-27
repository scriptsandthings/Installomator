setupmanager)
    name="Setup Manager"
    type="pkg"
    packageID="com.jamf.setupmanager"
    downloadURL=$(downloadURLFromGit jamf Setup-Manager)
    appNewVersion=$(versionFromGit jamf Setup-Manager)
    expectedTeamID="483DWKW443"
    ;;
