on open ipynbfile
	tell application "Finder" to set ntbkpth to quoted form of POSIX path of ipynbfile
	set cmd to "jupyter notebook " & ntbkpth
	
	tell application "Terminal"
		activate
		set shell to do script "/bin/echo"
		do script cmd in shell
	end tell
end open
