shutterencoder)
    name="Shutter Encoder"
    type="pkg"
    packageID="com.paulpacifico.shutterencoder"
    # vendor serves each build at a fixed-per-version URL; version read from the Homebrew cask API
    appNewVersion="$(curl -fsL --connect-timeout 15 --max-time 30 "https://formulae.brew.sh/api/cask/shutter-encoder.json" | /usr/bin/plutil -extract version raw -o - -)"
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://www.shutterencoder.com/Shutter%20Encoder%20${appNewVersion}%20Apple%20Silicon.pkg"
    else
        downloadURL="https://www.shutterencoder.com/Shutter%20Encoder%20${appNewVersion}%20Mac%2064bits.pkg"
    fi
    expectedTeamID="LZ28YRG3Q4"
    ;;
