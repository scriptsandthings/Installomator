santa)
    # Santa is maintained by North Pole Security; google/santa is archived.
    name="Santa"
    type="pkg"
    packageID="com.northpolesec.santa"
    downloadURL=$(downloadURLFromGit northpolesec santa)
    appNewVersion=$(versionFromGit northpolesec santa)
    expectedTeamID="ZMCG7MLDV9"
    ;;
