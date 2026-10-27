jamfscopemap)
    name="ScopeMap"
    type="pkg"
    # Newest release that has a package: a release can be published before its package is attached (2.0).
    downloadURL=$(curl -fsL "https://api.github.com/repos/Jamf-Concepts/scope-map/releases?per_page=20" | awk -F '"' '/"browser_download_url":/ && /ScopeMap-[0-9.]+\.pkg"/ && url == "" { url=$4 } END { print url }')
    appNewVersion=$(printf '%s\n' "$downloadURL" | sed -E 's|.*/ScopeMap-([0-9.]+)\.pkg$|\1|')
    expectedTeamID="483DWKW443"
    ;;
