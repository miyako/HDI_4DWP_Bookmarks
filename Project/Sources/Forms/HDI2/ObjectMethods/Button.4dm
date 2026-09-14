C_OBJECT:C1216($range)
C_TEXT:C284($bookmarkName)

$range:=WP Selection range:C1340(vDoc)
$bookmarkName:=Request:C163("Bookmark name?")
If (ok=1)
	// create bookmark
	WP NEW BOOKMARK:C1415($range; $bookmarkName)
	// refresh list
	WP GET BOOKMARKS:C1417(vDoc; _Bookmarks)
End if 
