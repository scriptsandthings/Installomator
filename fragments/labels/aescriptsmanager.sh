aescriptsmanager)
    # aescripts + aeplugins manager app (bundle com.aescripts.updater.Updater).
    # Version and URL come from the app's own Sparkle feed (SUFeedURL in Info.plist).
    # updates.aescripts.com sits behind Cloudflare. The dmg answers 403 to curl's default
    # User-Agent and 200 to a browser one. The feed answers plain curl today but refuses
    # Python-urllib, so it gets the same browser User-Agent (checked 2026-10-05).
    name="aescripts + aeplugins"
    type="dmg"
    aescriptsUA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.1 Safari/605.1.15"
    curlOptions=( -A "$aescriptsUA" )
    aescriptsFeed="$(curl -fsL -A "$aescriptsUA" --connect-timeout 15 --max-time 30 "https://updates.aescripts.com/updater/mac/updater.rss")"
    downloadURL="$(printf '%s\n' "$aescriptsFeed" | grep -o 'enclosure url="[^"]*"' | head -1 | cut -d'"' -f2)"
    appNewVersion="$(printf '%s\n' "$aescriptsFeed" | grep -o 'sparkle:shortVersionString="[^"]*"' | head -1 | cut -d'"' -f2)"
    expectedTeamID="YL6UJ9V949"
    blockingProcesses=( "aescripts + aeplugins" )
    ;;
