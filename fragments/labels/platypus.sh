platypus)
    name="Platypus"
    type="zip"
    # Each release has the app zip and a source zip (platypusX.Y.Z.src.zip); pick the app.
    appNewVersion=$(versionFromGit sveinbjornt Platypus)
    archiveName="platypus${appNewVersion}.zip"
    downloadURL=$(downloadURLFromGit sveinbjornt Platypus)
    expectedTeamID="55GP2M789L"
    ;;
