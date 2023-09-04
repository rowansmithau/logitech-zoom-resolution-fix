repeat
	tell application "System Events"
		if exists (window "Zoom Meeting" of process "zoom.us") then
			if not (exists (window 1 of process "Photo Booth")) then
				tell application "Photo Booth" to activate
				set visible of application process "Photo Booth" to false
			end if
		else if (exists (window 1 of process "Photo Booth")) then
			tell application "Photo Booth" to quit
		end if
	end tell
	delay 5
end repeat
