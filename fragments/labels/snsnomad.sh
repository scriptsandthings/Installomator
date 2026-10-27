snsnomad)
    # Studio Network Solutions Nomad (EVO/ShareBrowser remote access); not Jamf's NoMAD (label nomad)
    name="Nomad"
    type="dmg"
    snsNomadFile="$(curl -fsL --connect-timeout 15 --max-time 30 "https://www.snsftp.com/public/EVO/Nomad/Mac/" | grep -oE '(SNS-)?Nomad-[0-9.]+\.dmg' | sort -u | sed -E 's/^(.*Nomad-)([0-9.]+)\.dmg$/\2 &/' | sort -V | tail -1 | cut -d' ' -f2)"
    downloadURL="https://www.snsftp.com/public/EVO/Nomad/Mac/${snsNomadFile}"
    appNewVersion="$(echo "$snsNomadFile" | sed -E 's/.*Nomad-([0-9.]+)\.dmg/\1/')"
    expectedTeamID="76PTYDYVW4"
    ;;
