frameiotransfer)
    name="Frame.io Transfer"
    type="dmg"
    # The latest/ links carry no version, and the updater publishes no latest-mac.yml or RELEASES feed, so appNewVersion is unset.
    if [[ $(arch) == "arm64" ]]; then
        downloadURL="https://transferapp.frame.io/Frame.io-Transfer/6ab0c27d61d7cf8793b0357e6533ed81/latest/darwin/arm64/Frame.io+Transfer.dmg"
    else
        downloadURL="https://transferapp.frame.io/Frame.io-Transfer/6ab0c27d61d7cf8793b0357e6533ed81/latest/darwin/x64/Frame.io+Transfer.dmg"
    fi
    expectedTeamID="6D429SHX3Y"
    ;;
