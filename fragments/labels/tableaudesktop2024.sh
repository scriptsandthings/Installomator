tableaudesktop2024)
    # Newest Tableau Desktop 2024 release. Tableau's release list leaves some out (2024.3), so look
    # past its newest entry in the per-release JSON before taking the download link from it.
    name="Tableau Desktop"
    type="pkgInDmg"
    packageID="com.tableausoftware.tableaudesktop"
    tableauYear="2024"
    tableauJSON="https://downloads.tableau.com/esdalt/JSON"
    appNewVersion=$(curl -fsL "https://www.tableau.com/support/releases/desktop" | grep -oE "/support/releases/desktop/${tableauYear}\.[0-9]+(\.[0-9]+)?" | sed 's|.*/||' | sort -uV | tail -1)
    tableauMinor=${${appNewVersion#${tableauYear}.}%%.*}
    tableauPatch=${appNewVersion#${tableauYear}.${tableauMinor}}
    tableauPatch=${tableauPatch#.}
    tableauMinor=${tableauMinor:-0}
    tableauPatch=${tableauPatch:-0}
    while (( tableauMinor <= 4 )); do
        if curl -fsL -o /dev/null "${tableauJSON}/${tableauYear}.${tableauMinor}.$(( tableauPatch + 1 )).json"; then
            tableauPatch=$(( tableauPatch + 1 ))
        elif curl -fsL -o /dev/null "${tableauJSON}/${tableauYear}.$(( tableauMinor + 1 )).0.json"; then
            tableauMinor=$(( tableauMinor + 1 ))
            tableauPatch=0
        else
            break
        fi
    done
    appNewVersion="${tableauYear}.${tableauMinor}.${tableauPatch}"
    tableauArch=""
    if [[ $(/usr/bin/arch) == "arm64" ]]; then
        tableauArch="-arm64"
    fi
    downloadURL=$(curl -fsL "${tableauJSON}/${appNewVersion}.json" | grep -oE "https://[^\"]*/TableauDesktop-[0-9-]+${tableauArch}\.dmg" | head -1)
    expectedTeamID="QJ4XPRK37C"
    ;;
