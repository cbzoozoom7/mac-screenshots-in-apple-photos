on adding folder items to sfolder
	if application "Photos" is not running then
		tell application "Finder"
			set photoslibrary to ((home as text) & "Pictures:Photos Library.photoslibrary")
			open the photoslibrary
			set folder_items to every file of sfolder as alias list
			set screenshots to {}
			repeat with itm in folder_items
				if the kind of itm contains " image" or kind of itm contains " movie" then copy itm as alias to the end of screenshots
			end repeat
		end tell
		delay 1 --for the photos library to open
		tell application "Photos" to import screenshots
		tell application "Finder" to move screenshots to trash
		quit application "Photos"
	end if
end adding folder items to
