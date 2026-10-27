visualstudiocodeinsiders)
    name="Visual Studio Code - Insiders"
    type="zip"
    appNewVersion="$(curl -fsL --connect-timeout 15 --max-time 30 "https://update.code.visualstudio.com/api/update/darwin-universal/insider/latest" | tr ',' '\n' | grep '"productVersion"' | head -1 | cut -d'"' -f4)"
    downloadURL="https://update.code.visualstudio.com/latest/darwin-universal/insider"
    expectedTeamID="UBF8T346G9"
    appName="Visual Studio Code - Insiders.app"
    blockingProcesses=( "Code - Insiders" )
    ;;
