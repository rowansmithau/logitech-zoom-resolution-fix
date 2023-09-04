# logitech-zoom-resolution-fix
fix for zoom not setting resolution to HD for logitech webcams
---
1. Place `logi-zoom.scpt` somewhere.
2. Place `zoom-logi.plist` in `~/Library/LaunchAgents/`.
3. In `zoom-logi.plist` update the location of `logi-zoom.scpt` to suit where you store it.
4. Give the system `osaserver` binary the "Accessibility" permission in MacOS settings.
5. Run `launchctl load -w ~/Library/LaunchAgents/zoom-logi.plist`
6. MacOS updates may remove the `osaserver` permissions, re-add them if necessary, then run `launchctl unload ~/Library/LaunchAgents/zoom-logi.plist` and then `launchctl load -w ~/Library/LaunchAgents/zoom-logi.plist` again.

Reference: https://community.zoom.com/t5/Meetings/Anybody-else-having-problem-with-Logitech-webcam-with-the-new/m-p/100137/highlight/true#M56560
