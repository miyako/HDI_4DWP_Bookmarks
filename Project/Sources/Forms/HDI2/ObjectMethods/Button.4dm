//%attributes = {"invisible":true}
var $range : Object
var $bookmarkName : Text

$range:=WP Selection range:C1340(vDoc)
$bookmarkName:=Request:C163(Localized string("PromptBookmarkName"))
If (ok=1)
	// create bookmark
	WP NEW BOOKMARK:C1415($range; $bookmarkName)
	// refresh list
	WP GET BOOKMARKS:C1417(vDoc; _Bookmarks)
End if 
