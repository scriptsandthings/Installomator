texturepacker)
    name="TexturePacker"
    type="dmg"
    appNewVersion=$(getJSONValue "$(curl -sfL "https://formulae.brew.sh/api/cask/texturepacker.json")" "version")
    downloadURL="https://www.codeandweb.com/download/texturepacker/${appNewVersion}/TexturePacker-${appNewVersion}.dmg"
    expectedTeamID="8P8584JRFS"
    ;;
