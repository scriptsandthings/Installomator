updd)
    # Touch-Base UPDD touch driver (carries UPDD Commander, Test, Console, Calibrate); the Touch-Base
    # portal has no public link, so the Prowise-branded build of the same signed pkg is used.
    # The Prowise help centre names the current dmg. The server answers HEAD as text/html but a GET returns the disk image.
    name="UPDD Commander"
    type="pkgInDmg"
    updddURL="$(curl -fsL --connect-timeout 15 --max-time 30 "https://service.prowise.com/api/v2/help_center/articles/search.json?locale=en-gb&query=updd+macos+touch+driver" | grep -oE 'https://dl\.prowise\.com/files/[0-9]+/updd_[0-9_]+\.dmg' | head -n 1)"
    downloadURL="${updddURL}/"
    appNewVersion="$(echo "$updddURL" | sed -nE 's/.*updd_0?([0-9]+)_0?([0-9]+)_([0-9]+)\.dmg/\1.\2.\3/p')"
    # The pkg receipt com.touch-base.pkg.updd carries the driver version (7.1.216), the same value as appNewVersion,
    # and the Distribution pkg-ref has the same id and version. No installed app bundle carries it: Commander 1.14.0,
    # Daemon 07.00.5, Test 1.5.9, System Extension 1.6.
    packageID="com.touch-base.pkg.updd"
    expectedTeamID="U86H28HG4S"
    ;;
