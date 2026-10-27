brighteyecontrol)
    # Ensemble Designs BrightEye Control (Mac), the control app for BrightEye video converters; x86_64 only, runs under Rosetta
    # the BrightEye support page lists a plain versioned zip (BrightEyeControl_Mac_3.1.0.zip) next to an older dmg; read the newest zip link off the page
    name="BrightEye Control"
    type="zip"
    downloadURL=$(curl -fsL --connect-timeout 15 --max-time 30 "https://www.ensembledesigns.com/support/brighteye-support/index.html" | grep -oE 'https://www\.ensembledesigns\.com/file_download/BrightEyeControl_Mac_[0-9.]+\.zip' | sort -u | sort -t_ -k3 -V | tail -n 1)
    appNewVersion=$(echo "$downloadURL" | sed -nE 's/.*BrightEyeControl_Mac_([0-9.]+)\.zip/\1/p')
    expectedTeamID="Q2NT49ZR79"
    ;;
