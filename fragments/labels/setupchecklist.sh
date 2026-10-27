setupchecklist)
    name="Setup Checklist"
    type="pkg"
    packageID="com.jamf.setupchecklist"
    downloadURL=$(downloadURLFromGit Jamf-Concepts setup-checklist)
    appNewVersion=$(curl -sfL "https://api.github.com/repos/Jamf-Concepts/setup-checklist/releases/latest" | awk -F'"' '/tag_name/{gsub(/^v/,"",$4); print $4; exit}')
    expectedTeamID="483DWKW443"
    ;;
