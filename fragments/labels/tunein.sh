tunein)
    name="TuneIn"
    type="dmg"
    # no stable "latest" link; the Homebrew cask API tracks the CDN file name
    downloadURL=$(curl -fsL https://formulae.brew.sh/api/cask/tunein.json | plutil -extract url raw -o - -)
    appNewVersion=$(echo "${downloadURL}" | grep -oE 'TuneIn-[0-9.]+' | cut -d- -f2)
    expectedTeamID="B8N28J4XJY"
    ;;
