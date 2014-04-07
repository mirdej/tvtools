
-- make autosave folder if it doesnt exist
tell application "Finder"
	set myhome to home
	set bakfile_location to (myhome as string) & "Documents:Surtitler Autosave:"
	try
		make new folder at folder "Documents" of home with properties {name:"Surtitler Autosave"}
	end try
end tell

tell application "TextWrangler"
	-- save a backup copy
	set actualfile to file of document 1
	set thename to name of document 1
	set mydate to do shell script "date '+%Y%m%d-%k%M'"
	set bakname to bakfile_location & thename & "-" & mydate
	save document 1 to bakname
	close document 1
	open actualfile
	
-- remove whitespace and superfluous empty lines
replace "^\\r^\\r*" using "\\r" searching in document 1 options {search mode:grep, showing results:false} saving yes
-- find one-liners
replace "\\r\\r(.*)\\r\\r" using "\\r\\r\\1\\r-\\r\\r" searching in document 1 options {search mode:grep, showing results:false} saving yes
replace "\\r\\r(.*)\\r\\r" using "\\r\\r\\1\\r-\\r\\r" searching in document 1 options {search mode:grep, showing results:false} saving yes
--see if we have a oneliner at the beginning
replace "\\A(.*)\\r\\r" using "\\1\\r-\\r\\r" searching in document 1 options {search mode:grep, showing results:false} saving yes

-- remove all backslashes
replace "\\" using "" searching in document 1 options {showing results:false} saving yes
-- remove empty characters at end of lines, remove empty lines
--	replace "\\s+\\r\\r(\\r+)" using "\\r\\r" searching in document 1 options {search mode:grep, showing results:false} saving yes
-- escape commas and quotes
replace "([,;])" using "\\\\\\1" searching in document 1 options {search mode:grep, showing results:false} saving yes
-- remove all empty lines
replace "\\r+" using "\\r" searching in document 1 options {search mode:grep, showing results:false} saving yes
-- reformat document with one empty line in between subtitles
replace "(.*\\r.*\\r)" using "\\1\\r" searching in document 1 options {search mode:grep, showing results:false} saving yes

end tell
